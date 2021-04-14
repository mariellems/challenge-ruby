require_relative 'sections/product.rb'

module Pages
  class SearchPage < SitePrism::Page
    set_url '/index.php'

    element  :mensagem_sem_resultados, '.alert.alert-warning'
    element  :produto_em_estoque, '.available-now'
    element  :imagem_produto, '.product-container .product-image-container'
    element  :botao_adicionar_produto, '.button.ajax_add_to_cart_button'
    element  :mensagem_produto_adicionado, '.layer_cart_product h2'

    sections :products, Sections::Product, '.product-container'

    def mensagem(mensagem)
      mensagem_sem_resultados.text(mensagem)
    end

    def adicionar_produto_carrinho
      imagem_produto.hover
      botao_adicionar_produto.click
    end

    #def mensagem_produto_adicionado_carrinho(mensagem_produto_carrinho)
     # mensagem_produto_adicionado.text(mensagem_produto_carrinho)
    #end
  end
end
