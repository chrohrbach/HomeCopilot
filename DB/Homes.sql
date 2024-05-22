CREATE TABLE [dbo].[homes] (
    [homeId]               INT IDENTITY (1, 1)                                     PRIMARY KEY NOT NULL,
    [homeTitle]            NVARCHAR (100)                                          NOT NULL,
    [homeDescription]      NVARCHAR (255)                                          NOT NULL,
    [homeSurfaceM2]        INT                                                     CONSTRAINT [homeSurfaceM2] DEFAULT ((50)) NOT NULL,
    [homeRooms]            FLOAT (50)                                              CONSTRAINT [homeRooms] DEFAULT ((2)) NOT NULL,
    [homeIsHouse]          BIT                                                     CONSTRAINT [homeIsHouse] DEFAULT ((0)) NOT NULL,
    [homeImageURL]         NVARCHAR (255)                                          NULL,
    [homeAddressStreet]    NVARCHAR (199)                                          NOT NULL,
    [homeAddressStreetExt] NVARCHAR (100)                                          NULL,
    [homeAddressZipCode]   NVARCHAR (10)                                           NOT NULL,
    [homeAddressCity]      NVARCHAR (100)                                          NOT NULL,
    [homeAddressCountry]   NVARCHAR (50)                                           CONSTRAINT [homeAddressCountry] NOT NULL,
    [homeAddressRegion]    NVARCHAR (50)                                           NULL,
    [homeLandlordId]       INT                                                     NOT NULL,
    FOREIGN KEY ([homeLandlordId]) REFERENCES [dbo].[persons] ([personId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Home city address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'homes', @level2type = N'COLUMN', @level2name = N'homeAddressCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Home is a house', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'homes', @level2type = N'COLUMN', @level2name = N'homeIsHouse';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Home unique identifier', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'homes', @level2type = N'COLUMN', @level2name = N'homeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Home zip code', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'homes', @level2type = N'COLUMN', @level2name = N'homeAddressZipCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Home region', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'homes', @level2type = N'COLUMN', @level2name = N'homeAddressRegion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Home surface in square m', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'homes', @level2type = N'COLUMN', @level2name = N'homeSurfaceM2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Home URL for image', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'homes', @level2type = N'COLUMN', @level2name = N'homeImageURL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Home country', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'homes', @level2type = N'COLUMN', @level2name = N'homeAddressCountry';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Home number of rooms', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'homes', @level2type = N'COLUMN', @level2name = N'homeRooms';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Home short title used for listings', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'homes', @level2type = N'COLUMN', @level2name = N'homeTitle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Landlord ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'homes', @level2type = N'COLUMN', @level2name = N'homeLandlordId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Home street address', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'homes', @level2type = N'COLUMN', @level2name = N'homeAddressStreet';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Home extensive description used in cards', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'homes', @level2type = N'COLUMN', @level2name = N'homeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Home street address extension', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'homes', @level2type = N'COLUMN', @level2name = N'homeAddressStreetExt';
