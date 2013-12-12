#include <boost/asio.hpp>
#include <boost/array.hpp>
#include <iostream>
#include <string>

boost::asio::io_service io_service;
boost::asio::ip::tcp::resolver resolver(io_service);    // to resolve the url address
boost::asio::ip::tcp::socket sock(io_service);          // to connect and get data
boost::array<char, 4096> buffer;    // there is std::array too

void read_handler(const boost::system::error_code &ec, std::size_t bytes)
{
    if(!ec)
    {
        std::cout << std::string(buffer.data(), bytes) << std::endl;
        sock.async_read_some(boost::asio::buffer(buffer), read_handler);
    }
}

void connect_handler(const boost::system::error_code &ec)
{
    if(!ec)
    {
        boost::asio::write(sock,
                           boost::asio::buffer("GET /HTTP/1.1\r\n\r\nConnection: close\r\n"));
        sock.async_read_some(boost::asio::buffer(buffer), read_handler);
    }
}

void resolve_handler(const boost::system::error_code &ec,
                     boost::asio::ip::tcp::resolver::iterator it)
{
    if(!ec)
    {
        sock.async_connect(*it, connect_handler);
    } else {
        std::cout << "bad resolve!" << std::endl;
    }
}

int main()
{
    boost::asio::ip::tcp::resolver::query query1("www.wp.pl", "80");
    boost::asio::ip::tcp::resolver::query query2("www.gazeta.pl", "80");
    resolver.async_resolve(query1, resolve_handler);
    resolver.async_resolve(query2, resolve_handler);
    io_service.run();
}
