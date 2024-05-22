GO
INSERT INTO [dbo].[persons] ([personTitle], [personFirstName], [personLastName], [personAddressStreet], [personAddressStreetExt], [personAddressZipCode], [PersonAddressCity], [personAddressCountry], [personAddressRegion], [personAddressIsValid], [personPhoneNumber], [personPhoneNumberIsValid], [personEmailAddress], [personEmailAddressIsValid]) 
VALUES  (N'Monsieur', N'Christian', N'Rohrbach', N'Zwygartenstrasse 55', N'', N'3703', N'Aeschi bei Spiez', N'Suisse', N'Berne', 1, N'+41795523040', 1, N'crohrbach@hotmail.com', 1),
        (N'Madame', N'Christine', N'Rohrbach', N'Zwygartenstrasse 55', N'', N'3703', N'Aeschi bei Spiez', N'Suisse', N'Berne', 1, N'+4173650313', 1, N'cchristian.rohrbach@hotmail.com', 1),
        (N'Monsieur', N'Luca', N'Rohrbach', N'Route de Lavigny 1', N'', N'1168', N'Villars-sous-Yens', N'Suisse', N'Vaud', 1, N'+41797510495', 1, N'rohrbachluca@gmail.com', 1)
GO
INSERT INTO [dbo].[homes] ([homeTitle], [homeDescription], [homeSurfaceM2], [homeRooms], [homeIsHouse], [homeImageURL], [homeAddressStreet], [homeAddressStreetExt], [homeAddressZipCode], [homeAddressCity], [homeAddressCountry], [homeAddressRegion], [homeLandlordId]) 
VALUES  (N'Villa mitoyenne', N'Grande maison mitoyenne en plein campagne avec piscine, garage, places de parc et annexes', 240, 6, 1, N'', N'Route de lavigny 1', N'', N'1168', N'Villars-sous-Yens', N'Suisse', N'Vaud', 2),
        (N'Villa mitoyenne', N'Grande maison mitoyenne en plein campagne avec garage, places de parc et annexes', 240, 6, 1, N'', N'Route de lavigny 1', N'', N'1168', N'Villars-sous-Yens', N'Suisse', N'Vaud', 2),
        (N'Appartement plein pied', N'Appartement de plein pied avec grande terrasse, garage et placse de parc', 89, 3, 0, N'', N'Passage de la Tour 1', N'', N'1168', N'Villars-sous-Yens', N'Suisse', N'Vaud', 2),
        (N'Appartement au premier', N'Appartement au premier étage avec balcon, garage et places de parc', 110, 4, 0, N'', N'Passage de la Tour 1', N'', N'1168', N'Villars-sous-Yens', N'Suisse', N'Vaud', 2),
        (N'Appartement au second', N'Appartement au deuxième étage avec balcon, garage et places de parc', 150, 5, 0, N'', N'Passage de la Tour 1', N'', N'1168', N'Villars-sous-Yens', N'Suisse', N'Vaud', 2)  
