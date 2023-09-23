# Instalación gema Pagy

## Agregar pagema algemfile

```ruby
bundle add pagy
```

## Configuro el Application Controller ass>controller>application_controller.rb para que la gema esté disponible en todoslos controladores del desarrollo.

```ruby
class ApplicationController < ActionController::Base
include Pagy::Backend
end
```

