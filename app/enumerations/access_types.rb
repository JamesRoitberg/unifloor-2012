class AccessTypes < EnumerateIt::Base
  associate_values(
    :admin   => ['admin', 'Administrador'],
    :representative  => ['representative', 'Representante'],
    :provider    => ['provider', 'Fornecedor']
  )
end