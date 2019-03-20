require_relative './config/environment'
use Rack::PostBodyContentTypeParser

use PetsController
run UsersController
