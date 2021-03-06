package pl.coderslab.app.services;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.app.model.Coin;
import pl.coderslab.app.model.Exchange;
import pl.coderslab.app.model.ExchangeCoin;
import pl.coderslab.app.repositories.ExchangeRepository;

import java.util.List;

@Service
@Transactional
public class ExchangeService {
    private ExchangeRepository exchangeRepository;


    public ExchangeService(ExchangeRepository exchangeRepository) {
        this.exchangeRepository = exchangeRepository;
    }
    public List<Exchange> getExchanges(){
        List<Exchange> exchanges = exchangeRepository.findAll();
        exchanges.forEach(e -> e.getExchangeCoins().size());
        return exchanges;
    }
    public Exchange getExchangeById(Long id) {
        Exchange exchange = exchangeRepository.findAllById(id);

        exchange.getExchangeCoins().size();

//
//        for(ExchangeCoin coin: exchange.getExchangeCoins()){
//            coin.getDataCoins().size();
//        }

        exchange.getExchangeCoins().stream().forEach(c->c.getDataCoins().size());
        return exchange;
    }
    public Exchange getExchangeByName( String name){
        Exchange exchange = new Exchange();
        exchange = exchangeRepository.findAllByName(name);
        exchange.getExchangeCoins().size();
        return exchange;
    }
}
