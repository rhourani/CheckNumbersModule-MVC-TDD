using Microsoft.AspNetCore.Mvc;
using Moq;
using Nordia.Controllers;
using Nordia.Models;
using Nordia.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace Nordia.TEST.System.Controllers
{
    public class TestCheckModController
    {
        private readonly int ONE = 1;
        private readonly int HUNDRED = 100;

        [Fact]
        public async Task Index_ReturnsAViewResult_WithAListOfCheckNumMod()
        {
            // Arrange
            var mockRepo = new Mock<ICheckModService>();

            mockRepo.
                Setup(repo => repo.CheckNumCollectionMod(ONE,HUNDRED))
                .ReturnsAsync(new List<CheckNumModResultModel>());
            var controller = new HomeController(mockRepo.Object);

            // Act
            var result = controller.CheckNums();

            // Assert
            var viewResult = Assert.IsType<ViewResult>(result);
            var model = Assert.IsAssignableFrom<IEnumerable<CheckNumModResultModel>>(viewResult.ViewData.Model);
            Assert.Equal(47, model.Count());
        }
    }
}
