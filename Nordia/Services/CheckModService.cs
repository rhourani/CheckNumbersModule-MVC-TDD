using Nordia.Models;

namespace Nordia.Services
{
    public class CheckModService : ICheckModService
    {
       private readonly int FIVE = 5;
       private readonly int THREE = 3;

        public async Task<List<CheckNumModResultModel>> CheckNumCollectionMod(int from, int to)
        {
            List<CheckNumModResultModel> checkNumResults = new();
            

            for (int i = from; i <= to; i++)
            {
                CheckNumModResultModel checkNumResult = new();
                if (isMod(i, FIVE) && isMod(i, THREE))
                {
                    checkNumResult = new CheckNumModResultModel { 
                        Message = "Nordea Bank",
                        Number= i
                    };
                }
                else if (isMod(i, THREE))
                {
                    checkNumResult = new CheckNumModResultModel
                    {
                        Message = "Nordea",
                        Number = i
                    };
                }
                else if (isMod(i, FIVE))
                {
                    checkNumResult = new CheckNumModResultModel
                    {
                        Message = "Bank",
                        Number = i
                    };
                }


               if(!string.IsNullOrEmpty(checkNumResult.Message)) {
                    checkNumResults.Add(checkNumResult);
                }
               
            }

            return await Task.FromResult(checkNumResults);
        }

        /// <summary>
        /// Calculating the mod of a number, taking the dividened value and the divisor
        /// </summary>
        /// <param name="dividened"></param>
        /// <param name="divisor"></param>
        /// <returns></returns>
        public bool isMod(int dividened, int divisor)
        {
            return dividened % divisor == 0;
        }

    }
}

