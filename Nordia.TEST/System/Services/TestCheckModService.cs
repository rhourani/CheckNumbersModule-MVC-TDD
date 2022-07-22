using FluentAssertions;
using Newtonsoft.Json.Serialization;
using Nordia.Models;
using Nordia.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace Nordia.TEST.System.Services
{
    public class TestCheckModService
    {
        private readonly int ONE = 1;
        private readonly int THREE = 3;
        private readonly int FIVE = 5;
        private readonly int NINE = 9;
        private readonly int HUNDRED = 100;

        [Fact]
        public async Task GetCheckNumModResultList_WhenCalled_ReturnListOfCheckNumModResultObjects()
        {
            //Arrange
            var sut = new CheckModService();
            //Act
            var result = await sut.CheckNumCollectionMod(ONE,HUNDRED);
            //Assert
            result.Should().BeOfType<List<CheckNumModResultModel>>();
        }

        [Fact]
        public async Task isMod_WhenCalled_ReturnTrue()
        {
            //Arrange
            var sut = new CheckModService();
            //Act
            var result = sut.isMod(NINE,THREE);
            //Assert
            result.Should().BeTrue();
        }
        [Fact]
        public async Task isMod_WhenCalled_ReturnFalse()
        {
            //Arrange
            var sut = new CheckModService();
            //Act
            var result = sut.isMod(FIVE, THREE);
            //Assert
            result.Should().BeFalse();
        }
    }
}
