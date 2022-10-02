using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.WindowsAzure;
using Microsoft.WindowsAzure.StorageClient;

namespace GuestBook_Data
{
    public class GuestBookDataContext : TableServiceContext
    {
        public GuestBookDataContext(string baseAddress, StorageCredentials credentials)
            : base(baseAddress, credentials)
        {

        }
        public IQueryable<GuestBookEntry> GuestBookEntry
        {
            get => this.CreateQuery<GuestBookEntry>("GuestBookEntry");
        }
    }
}
