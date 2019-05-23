using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;


namespace HoustonFruit.Controllers
{

    public struct FruitStruct
    {

        public static Dictionary<string, FruitStruct> index = new Dictionary<string, FruitStruct>();
        public static List<FruitStruct> all = new List<FruitStruct>();

        public string name;
        public string color;

        public FruitStruct(string name, string color)
        {
            this.name = name;
            this.color = color;
            FruitStruct.index[name] = this;
            FruitStruct.all.Add(this);
        }
    }

    public class Fruit
    {

        public static Dictionary<string, Fruit> index = new Dictionary<string, Fruit>();
        public static List<Fruit> all = new List<Fruit>();

        public string name;
        public string color;

        public Fruit(string name, string color)
        {
            this.name = name;
            this.color = color;
            Fruit.index[name] = this;
            Fruit.all.Add(this);
        }
    }


    [Route("api/[controller]")]
    [ApiController]
    public class FruitsController : ControllerBase
    {
        // GET api/values
        [HttpGet]
        public ActionResult<Fruit> Get()
        {
            Fruit bananna = new Fruit("Bananna", "Yellow");
            Fruit anotherBanana = bananna;
            anotherBanana.name = "Banana";
            return bananna;
        }

        // GET api/values/5
        [HttpGet("{id}")]
        public ActionResult<string> Get(int id)
        {
            return "value";
        }

        // POST api/values
        [HttpPost]
        public Fruit Post([FromBody] Fruit fruit)
        {
            return fruit;
        }

        // PUT api/values/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/values/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
