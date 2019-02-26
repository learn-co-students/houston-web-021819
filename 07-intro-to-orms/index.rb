#!/usr/bin/env ruby

require 'rubygems'
require 'commander/import'
require './Hero.rb'
require './HeroAbility.rb'
require './Ability.rb'
require 'pry'

program :name, 'heroes'
program :version, '0.0.1'
program :description, 'A Heroic CLI'
command :start do |c|
    c.action do |args, options|
        def run 
            action = choose('What would you like to do?', 
                'Add a Hero', 
                'Add an Ability',
                'Add an Ability to a Hero',
                'View Heroes',
                'View Abilities',
                'Update a Hero',
                'Remove a Hero',
                'View Heroes by Ability',
                'View Abilities by Hero'
            )
            case action
            when "Add a Hero"
                Hero.new(
                    first_name: ask("First Name:  "),
                    last_name: ask("Last Name: ")
                )
            when "Add an Ability"
                Ability.new(
                    name: ask("Name:  "),
                    coolness: ask("Coolness:  ")
                )
            when "Add an Ability to a Hero"
                HeroAbility.new(
                    hero: choose('Which Hero?', *Hero.all),
                    ability: choose('Which Ability?', *Ability.all)
                )
            when "View Heroes"
                say '==========================='
                say Hero.all.join("\n")
                say '==========================='
            when "View Abilities"
                say '==========================='
                say Ability.all.join("\n")
                say '==========================='
            when "Update a Hero"
                selected_hero = choose('Which Hero?', *Hero.all)
                selected_hero.first_name = ask("First Name:  ")
                selected_hero.last_name = ask("Last Name: ")
            when "Remove a Hero"
                selected_hero = choose('Which Hero?', *Hero.all)
                Hero.all.delete(selected_hero)
            when "View Abilities by Hero"
                selected_hero = choose('Which Hero?', *Hero.all)
                say '==========================='
                say selected_hero.abilities.join("\n")
                say '==========================='
            when "View Heroes by Ability"
                selected_ability = choose('Which Ability?', *Ability.all)
                say '==========================='
                say selected_ability.heroes.join("\n")
                say '==========================='
            end
            run
        end
        run        
    end
  end
