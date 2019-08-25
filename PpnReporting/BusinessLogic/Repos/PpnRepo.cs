using Microsoft.EntityFrameworkCore;
using PpnReporting.BusinessLogic.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PpnReporting.BusinessLogic.Repos
{
    public class PpnRepo : IPpnRepo
    {
        private readonly PpnContext _db;

        public PpnRepo(PpnContext db)
            => _db = db;

        public List<Lab> GetLabs()
        {
            return _db.Labs.Include(lab => lab.Horse).ToList();
        }
    }
}
