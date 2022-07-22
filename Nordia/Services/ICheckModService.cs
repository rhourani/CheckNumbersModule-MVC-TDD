using Nordia.Models;

namespace Nordia.Services
{
    public interface ICheckModService
    {
        public Task<List<CheckNumModResultModel>> CheckNumCollectionMod(int from = 1, int to = 100);
        public bool isMod(int dividened, int divisor);
    }
}
