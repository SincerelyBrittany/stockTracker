require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
use StockController
use UsersController
use WatchlistsController
# use WatchlistStockController
use SessionsController
run ApplicationController
