#!/usr/bin/env ruby
require './config/environment.rb'

binding.pry

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
                'View Abilities by Hero'
            )
            case action
            when "Add a Hero"
                Hero.create(
                    first_name: ask("First Name:  "),
                    last_name: ask("Last Name: ")
                )
            when "Add an Ability"
                Ability.create(
                    name: ask("Name:  "),
                    coolness: ask("Coolness:  ")
                )
            when "Add an Ability to a Hero"
                HeroAbility.create(
                    hero_id: choose('Which Hero?', *Hero.all).id,
                    ability_id: choose('Which Ability?', *Ability.all).id
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
                selected_hero.update(
                    first_name: ask("First Name:  "),
                    last_name:  ask("Last Name:  ")
                )
                # selected_hero.first_name = ask("First Name:  ")
                # selected_hero.last_name = ask("Last Name: ")
            when "Remove a Hero"
                selected_hero = choose('Which Hero?', *Hero.all)
                selected_hero.destroy
            when "View Abilities by Hero"
                selected_hero = choose('Which Hero?', *Hero.all)
                say '==========================='
                say selected_hero.abilities.join("\n")
                say '==========================='
            end 
            run
        end
        run        
    end
  end
