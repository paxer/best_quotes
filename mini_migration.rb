require 'sqlite3'
require_relative 'app/models/quotes'

conn = SQLite3::Database.new 'test.db'
conn.execute <<~SQL
  create table quotes (
    id INTEGER PRIMARY KEY,
    author VARCHAR(30),
    quote VARCHAR(32000));
SQL

quote = Quotes.create 'author' => 'Gandalf', 'quote' => 'Many that live deserve death. And some that die deserve life. Can you give it to them? Then do not be too eager to deal out death in judgement.'

puts quote.inspect
