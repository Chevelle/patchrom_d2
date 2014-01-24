.class public Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
.source "MiuiIccPhoneBookInterfaceManagerProxy.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 0
    .parameter "iccPhoneBookInterfaceManager"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getAdnCapacity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getAdnCapacity()I

    move-result v0

    return v0
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getFreeAdn()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getFreeAdn()I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getLastError()I

    move-result v0

    return v0
.end method

.method public isPhoneBookReady()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->isPhoneBookReady()Z

    move-result v0

    return v0
.end method

.method public isUsimPhoneBookRecords()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->isUsimPhoneBookRecords()Z

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "index"
    .parameter "pin2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "pin2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateUsimPhoneBookRecordsByIndex(ILcom/android/internal/telephony/AdnRecord;I)Z
    .locals 1
    .parameter "efid"
    .parameter "adn"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateUsimPhoneBookRecordsByIndex(ILcom/android/internal/telephony/AdnRecord;I)Z

    move-result v0

    return v0
.end method

.method public updateUsimPhoneBookRecordsBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 1
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateUsimPhoneBookRecordsBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v0

    return v0
.end method

.method public updateUsimPhoneBookRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newEmails"
    .parameter "newAnr"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateUsimPhoneBookRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public updateUsimPhoneBookRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newEmails"
    .parameter "newAnr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateUsimPhoneBookRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
