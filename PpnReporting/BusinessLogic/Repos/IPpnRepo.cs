using PpnReporting.BusinessLogic.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace PpnReporting.BusinessLogic.Repos
{
    public interface IPpnRepo
    {
        List<Lab> GetLabs();
    }
}
