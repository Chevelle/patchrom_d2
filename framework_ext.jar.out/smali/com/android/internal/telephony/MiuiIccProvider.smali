.class public Lcom/android/internal/telephony/MiuiIccProvider;
.super Landroid/content/ContentProvider;
.source "MiuiIccProvider.java"


# static fields
.field public static final ADDRESS_BOOK_COLUMN_ANR:I = 0x4

.field public static final ADDRESS_BOOK_COLUMN_EMAILS:I = 0x2

.field public static final ADDRESS_BOOK_COLUMN_ID:I = 0x3

.field public static final ADDRESS_BOOK_COLUMN_NAME:I = 0x0

.field public static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field public static final ADDRESS_BOOK_COLUMN_NUMBER:I = 0x1

.field private static final ADN:I = 0x1

.field private static final ADN_CAPACITY:I = 0x5

.field private static final ADN_STORAGE:I = 0x6

.field static final DBG:Z = false

.field public static final ERROR_ADN_LIST_NOT_EXIST:I = -0x3f2

.field public static final ERROR_ANR_FULL:I = -0x3f0

.field public static final ERROR_ANR_TOO_LONG:I = -0x3f1

.field public static final ERROR_EMAIL_FULL:I = -0x3f3

.field public static final ERROR_EMAIL_TOO_LONG:I = -0x3f4

.field public static final ERROR_GENERIC_FAILURE:I = -0x3ea

.field public static final ERROR_ICC_CARD_RESET:I = -0x3f5

.field public static final ERROR_NOT_READY:I = -0x3ee

.field public static final ERROR_NO_ERROR:I = 0x0

.field public static final ERROR_NUMBER_TOO_LONG:I = -0x3eb

.field public static final ERROR_PASSWORD_ERROR:I = -0x3ef

.field public static final ERROR_STORAGE_FULL:I = -0x3ed

.field public static final ERROR_TEXT_TOO_LONG:I = -0x3ec

.field public static final ERROR_UNKNOWN:I = -0x3e9

.field public static final ERROR_UNKNOWN_EF:I = -0x3f6

.field private static final FDN:I = 0x2

.field private static final FREE_ADN:I = 0x4

.field private static final IS_PHONEBOOK_READY:I = 0x7

.field private static final IS_USIM_PHONEBOOK:I = 0x8

.field private static final LAST_ERROR:I = 0x9

.field private static final SDN:I = 0x3

.field public static final STR_ANR:Ljava/lang/String; = "anr"

.field public static final STR_EMAILS:Ljava/lang/String; = "emails"

.field public static final STR_ID:Ljava/lang/String; = "_id"

.field public static final STR_NAME:Ljava/lang/String; = "name"

.field public static final STR_NEW_ANR:Ljava/lang/String; = "newAnr"

.field public static final STR_NEW_EMAILS:Ljava/lang/String; = "newEmails"

.field public static final STR_NEW_NAME:Ljava/lang/String; = "newName"

.field public static final STR_NEW_NUMBER:Ljava/lang/String; = "newNumber"

.field public static final STR_NEW_TAG:Ljava/lang/String; = "newTag"

.field public static final STR_NUMBER:Ljava/lang/String; = "number"

.field public static final STR_PIN2:Ljava/lang/String; = "pin2"

.field public static final STR_TAG:Ljava/lang/String; = "tag"

.field static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 39
    new-array v0, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "anr"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 80
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 83
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "freeadn"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adncapacity"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adnstroage"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "isphonebookready"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "isusimphonebook"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "lasterror"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getAdnCapacity()Landroid/database/MatrixCursor;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, capacity:I
    new-instance v2, Landroid/database/MatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "count"

    aput-object v5, v4, v7

    invoke-direct {v2, v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 365
    .local v2, cursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v3

    .line 366
    .local v3, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v3, :cond_0

    .line 367
    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getAdnCapacity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 374
    .end local v3           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :cond_0
    :goto_0
    new-array v1, v6, [Ljava/lang/Object;

    .line 375
    .local v1, count:[Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v7

    .line 376
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 377
    return-object v2

    .line 371
    .end local v1           #count:[Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 369
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private getFreeAdn()Landroid/database/MatrixCursor;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 340
    const/4 v2, 0x0

    .line 341
    .local v2, freeAdn:I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "count"

    aput-object v5, v4, v7

    invoke-direct {v1, v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 344
    .local v1, cursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v3

    .line 345
    .local v3, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v3, :cond_0

    .line 346
    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getFreeAdn()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 354
    .end local v3           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :cond_0
    :goto_0
    new-array v0, v6, [Ljava/lang/Object;

    .line 355
    .local v0, count:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v7

    .line 356
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 357
    return-object v1

    .line 350
    .end local v0           #count:[Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 348
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    .locals 2

    .prologue
    .line 303
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 304
    .local v0, iccPhoneBookService:Lcom/android/internal/telephony/IIccPhoneBook;
    instance-of v1, v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    if-eqz v1, :cond_0

    .line 305
    check-cast v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    .line 307
    .end local v0           #iccPhoneBookService:Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    return-object v0

    .restart local v0       #iccPhoneBookService:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLastError()Landroid/database/MatrixCursor;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 442
    const/4 v2, 0x0

    .line 443
    .local v2, errno:I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "error"

    aput-object v5, v4, v7

    invoke-direct {v1, v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 445
    .local v1, cursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v3

    .line 446
    .local v3, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v3, :cond_0

    .line 447
    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getLastError()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 454
    .end local v3           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :cond_0
    :goto_0
    new-array v0, v6, [Ljava/lang/Object;

    .line 455
    .local v0, count:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v7

    .line 456
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 457
    return-object v1

    .line 451
    .end local v0           #count:[Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 449
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private getStorage()Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 381
    const/4 v2, 0x0

    .line 382
    .local v2, freeAdn:I
    const/4 v0, 0x0

    .line 383
    .local v0, capacity:I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "total"

    aput-object v6, v5, v8

    const-string v6, "free"

    aput-object v6, v5, v7

    invoke-direct {v1, v5, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 386
    .local v1, cursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v3

    .line 387
    .local v3, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v3, :cond_0

    .line 388
    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getAdnCapacity()I

    move-result v0

    .line 389
    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getFreeAdn()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 396
    .end local v3           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :cond_0
    :goto_0
    new-array v4, v9, [Ljava/lang/Object;

    .line 397
    .local v4, storage:[Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 398
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 399
    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 400
    return-object v1

    .line 393
    .end local v4           #storage:[Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 391
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private isPhoneBookReady()Landroid/database/MatrixCursor;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 404
    const/4 v3, 0x0

    .line 405
    .local v3, ready:Z
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "ready"

    aput-object v7, v6, v5

    invoke-direct {v1, v6, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 407
    .local v1, cursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v2

    .line 408
    .local v2, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v2, :cond_0

    .line 409
    invoke-virtual {v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->isPhoneBookReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 416
    .end local v2           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :cond_0
    :goto_0
    new-array v0, v4, [Ljava/lang/Object;

    .line 417
    .local v0, count:[Ljava/lang/Object;
    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v5

    .line 418
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 419
    return-object v1

    :cond_1
    move v4, v5

    .line 417
    goto :goto_1

    .line 413
    .end local v0           #count:[Ljava/lang/Object;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 411
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private isUsimPhoneBook()Landroid/database/MatrixCursor;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 423
    const/4 v3, 0x0

    .line 424
    .local v3, usim:Z
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "usimphonebook"

    aput-object v7, v6, v5

    invoke-direct {v1, v6, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 426
    .local v1, cursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v2

    .line 427
    .local v2, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v2, :cond_0

    .line 428
    invoke-virtual {v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->isUsimPhoneBookRecords()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 435
    .end local v2           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :cond_0
    :goto_0
    new-array v0, v4, [Ljava/lang/Object;

    .line 436
    .local v0, count:[Ljava/lang/Object;
    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v5

    .line 437
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 438
    return-object v1

    :cond_1
    move v4, v5

    .line 436
    goto :goto_1

    .line 432
    .end local v0           #count:[Ljava/lang/Object;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 430
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private loadFromEf(ILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "efid"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 314
    .local v0, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/MiuiAdnRecord;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v3

    .line 315
    .local v3, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v3, :cond_0

    .line 317
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .local v4, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/MiuiAdnRecord;>;"
    move-object v0, v4

    .line 327
    .end local v3           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    .end local v4           #records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/MiuiAdnRecord;>;"
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 328
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/MiuiIccProvider;->parseSelection(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 329
    .local v6, selections:[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v1, v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 330
    .local v1, cursor:Landroid/database/MatrixCursor;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, s:I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 331
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/MiuiAdnRecord;

    invoke-direct {p0, v7, v1, v2, v6}, Lcom/android/internal/telephony/MiuiIccProvider;->loadRecord(Lcom/android/internal/telephony/MiuiAdnRecord;Landroid/database/MatrixCursor;I[Ljava/lang/String;)V

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 334
    .end local v1           #cursor:Landroid/database/MatrixCursor;
    .end local v2           #i:I
    .end local v5           #s:I
    .end local v6           #selections:[Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 336
    .restart local v1       #cursor:Landroid/database/MatrixCursor;
    :cond_2
    return-object v1

    .line 322
    .end local v1           #cursor:Landroid/database/MatrixCursor;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 320
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/MiuiAdnRecord;Landroid/database/MatrixCursor;I[Ljava/lang/String;)V
    .locals 8
    .parameter "adn"
    .parameter "cursor"
    .parameter "id"
    .parameter "selections"

    .prologue
    const/4 v7, 0x0

    .line 518
    sget-object v5, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v5

    .line 519
    .local v3, length:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v5, p3, 0x1

    invoke-direct {p0, p4, p1, v5}, Lcom/android/internal/telephony/MiuiIccProvider;->match([Ljava/lang/String;Lcom/android/internal/telephony/MiuiAdnRecord;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 520
    new-array v1, v3, [Ljava/lang/Object;

    .line 521
    .local v1, contact:[Ljava/lang/Object;
    const/4 v5, 0x3

    add-int/lit8 v6, p3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    .line 522
    invoke-virtual {p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    .line 523
    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 525
    invoke-virtual {p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const/4 v2, 0x1

    .local v2, i:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    array-length v4, v5

    .local v4, s:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 529
    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 532
    :cond_0
    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 534
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    .end local v4           #s:I
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/android/internal/telephony/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 535
    invoke-virtual {p2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 537
    .end local v1           #contact:[Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 623
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void
.end method

.method private match([Ljava/lang/String;Lcom/android/internal/telephony/MiuiAdnRecord;I)Z
    .locals 5
    .parameter "selections"
    .parameter "adn"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 548
    const/4 v1, 0x1

    .line 549
    .local v1, match:Z
    if-eqz p1, :cond_2

    .line 550
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 551
    aget-object v3, p1, v0

    if-nez v3, :cond_1

    .line 550
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 574
    :goto_1
    if-nez v1, :cond_0

    .line 579
    .end local v0           #i:I
    :cond_2
    return v1

    .line 557
    .restart local v0       #i:I
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/MiuiAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 558
    goto :goto_1

    .line 560
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/MiuiAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 561
    goto :goto_1

    .line 563
    :pswitch_2
    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne p3, v3, :cond_3

    const/4 v1, 0x1

    .line 564
    :goto_2
    goto :goto_1

    :cond_3
    move v1, v2

    .line 563
    goto :goto_2

    .line 566
    :pswitch_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, ""

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 568
    :goto_3
    goto :goto_1

    .line 566
    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_3

    .line 570
    :pswitch_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_1

    .line 555
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    const/16 v3, 0x27

    const/4 v2, 0x1

    .line 540
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 541
    .local v0, len:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 542
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 544
    :cond_0
    return-object p1
.end method

.method private parseSelection(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 583
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 584
    const/4 v6, 0x0

    .line 619
    :cond_0
    return-object v6

    .line 587
    :cond_1
    sget-object v9, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    .line 588
    .local v6, results:[Ljava/lang/String;
    const-string v9, "AND"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 589
    .local v7, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 590
    .local v0, argsIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, v7

    if-ge v2, v9, :cond_0

    .line 591
    aget-object v5, v7, v2

    .line 592
    .local v5, param:Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 593
    .local v4, keyVal:[Ljava/lang/String;
    array-length v9, v4

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    .line 590
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 597
    :cond_3
    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, key:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 599
    .local v8, val:Ljava/lang/String;
    const-string v9, "?"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 600
    add-int/lit8 v1, v0, 0x1

    .end local v0           #argsIndex:I
    .local v1, argsIndex:I
    aget-object v8, p2, v0

    move v0, v1

    .line 603
    .end local v1           #argsIndex:I
    .restart local v0       #argsIndex:I
    :cond_4
    const-string v9, "tag"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 604
    const/4 v9, 0x0

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    .line 605
    :cond_5
    const-string v9, "pin2"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 606
    sget-object v9, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v9, v9

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    .line 607
    :cond_6
    const-string v9, "number"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 608
    const/4 v9, 0x1

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    .line 609
    :cond_7
    const-string v9, "_id"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 610
    const/4 v9, 0x3

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    .line 611
    :cond_8
    const-string v9, "name"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 612
    const/4 v9, 0x0

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    .line 613
    :cond_9
    const-string v9, "emails"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 614
    const/4 v9, 0x2

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto/16 :goto_1

    .line 615
    :cond_a
    const-string v9, "anr"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 616
    const/4 v9, 0x4

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto/16 :goto_1
.end method

.method private updateAdnRecordsInEfByIndex(ILcom/android/internal/telephony/MiuiAdnRecord;I)Z
    .locals 2
    .parameter "efid"
    .parameter "newAdn"
    .parameter "index"

    .prologue
    .line 505
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 506
    .local v0, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->updateUsimPhoneBookRecordsByIndex(ILcom/android/internal/telephony/AdnRecord;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 514
    .end local v0           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :goto_0
    return v1

    .line 511
    :catch_0
    move-exception v1

    .line 514
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 509
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .parameter "efid"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"
    .parameter "index"

    .prologue
    .line 476
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 477
    .local v0, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p4

    .line 478
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 485
    .end local v0           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :goto_0
    return v1

    .line 482
    :catch_0
    move-exception v1

    .line 485
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 480
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/MiuiAdnRecord;Lcom/android/internal/telephony/MiuiAdnRecord;)Z
    .locals 2
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    .line 491
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 492
    .local v0, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->updateUsimPhoneBookRecordsBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 500
    .end local v0           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :goto_0
    return v1

    .line 497
    :catch_0
    move-exception v1

    .line 500
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 495
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "efid"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"

    .prologue
    .line 462
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 463
    .local v0, phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 464
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 471
    .end local v0           #phoneBook:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManagerProxy;
    :goto_0
    return v1

    .line 468
    :catch_0
    move-exception v1

    .line 471
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 466
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 19
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 245
    sget-object v3, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v16

    .line 246
    .local v16, match:I
    packed-switch v16, :pswitch_data_0

    .line 254
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    :pswitch_0
    const/16 v4, 0x6f3a

    .line 257
    .local v4, efid:I
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MiuiIccProvider;->parseSelection(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 258
    .local v17, selections:[Ljava/lang/String;
    if-nez v17, :cond_0

    .line 259
    const/4 v3, 0x0

    .line 281
    :goto_1
    return v3

    .line 251
    .end local v4           #efid:I
    .end local v17           #selections:[Ljava/lang/String;
    :pswitch_1
    const/16 v4, 0x6f3b

    .line 252
    .restart local v4       #efid:I
    goto :goto_0

    .line 262
    .restart local v17       #selections:[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x3

    aget-object v3, v17, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    aget-object v3, v17, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 265
    .local v8, index:I
    :goto_2
    const/16 v3, 0x6f3b

    if-ne v4, v3, :cond_3

    .line 266
    if-ltz v8, :cond_2

    .line 267
    const-string v5, ""

    const-string v6, ""

    sget-object v3, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v3

    aget-object v7, v17, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v18

    .line 281
    .local v18, success:Z
    :goto_3
    if-nez v18, :cond_5

    const/4 v3, 0x0

    goto :goto_1

    .line 262
    .end local v8           #index:I
    .end local v18           #success:Z
    :cond_1
    const/4 v8, -0x1

    goto :goto_2

    .line 269
    .restart local v8       #index:I
    :cond_2
    const/4 v3, 0x0

    aget-object v11, v17, v3

    const/4 v3, 0x1

    aget-object v12, v17, v3

    const-string v13, ""

    const-string v14, ""

    sget-object v3, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v3

    aget-object v15, v17, v3

    move-object/from16 v9, p0

    move v10, v4

    invoke-direct/range {v9 .. v15}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .restart local v18       #success:Z
    goto :goto_3

    .line 273
    .end local v18           #success:Z
    :cond_3
    if-ltz v8, :cond_4

    .line 274
    new-instance v3, Lcom/android/internal/telephony/MiuiAdnRecord;

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const-string v9, ""

    invoke-direct {v3, v5, v6, v7, v9}, Lcom/android/internal/telephony/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfByIndex(ILcom/android/internal/telephony/MiuiAdnRecord;I)Z

    move-result v18

    .restart local v18       #success:Z
    goto :goto_3

    .line 276
    .end local v18           #success:Z
    :cond_4
    new-instance v3, Lcom/android/internal/telephony/MiuiAdnRecord;

    const/4 v5, 0x0

    aget-object v5, v17, v5

    const/4 v6, 0x1

    aget-object v6, v17, v6

    const/4 v7, 0x0

    const-string v9, ""

    invoke-direct {v3, v5, v6, v7, v9}, Lcom/android/internal/telephony/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/internal/telephony/MiuiAdnRecord;

    const-string v6, ""

    const-string v7, ""

    const/4 v9, 0x0

    const-string v10, ""

    invoke-direct {v5, v6, v7, v9, v10}, Lcom/android/internal/telephony/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v5}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/MiuiAdnRecord;Lcom/android/internal/telephony/MiuiAdnRecord;)Z

    move-result v18

    .restart local v18       #success:Z
    goto :goto_3

    .line 281
    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 286
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 19
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 129
    const/4 v8, 0x0

    .line 130
    .local v8, pin2:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 131
    .local v13, match:I
    packed-switch v13, :pswitch_data_0

    .line 140
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 143
    .local v3, efid:I
    :goto_0
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, tag:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 147
    :cond_0
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 150
    .local v7, number:Ljava/lang/String;
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_1

    .line 151
    const-string v4, ""

    const-string v5, ""

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 163
    .local v16, success:Z
    :goto_1
    if-nez v16, :cond_3

    .line 164
    const/4 v14, 0x0

    .line 184
    :goto_2
    return-object v14

    .line 136
    .end local v3           #efid:I
    .end local v6           #tag:Ljava/lang/String;
    .end local v7           #number:Ljava/lang/String;
    .end local v16           #success:Z
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 137
    .restart local v3       #efid:I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 138
    goto :goto_0

    .line 153
    .restart local v6       #tag:Ljava/lang/String;
    .restart local v7       #number:Ljava/lang/String;
    :cond_1
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 154
    .local v15, strEmail:Ljava/lang/String;
    const/4 v12, 0x0

    .line 155
    .local v12, emails:[Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 156
    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    .end local v12           #emails:[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v15, v12, v2

    .line 158
    .restart local v12       #emails:[Ljava/lang/String;
    :cond_2
    const-string v2, "anr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 159
    .local v10, anr:Ljava/lang/String;
    new-instance v9, Lcom/android/internal/telephony/MiuiAdnRecord;

    invoke-direct {v9, v6, v7, v12, v10}, Lcom/android/internal/telephony/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .local v9, adn:Lcom/android/internal/telephony/MiuiAdnRecord;
    new-instance v2, Lcom/android/internal/telephony/MiuiAdnRecord;

    const-string v4, ""

    const-string v5, ""

    const/16 v17, 0x0

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/android/internal/telephony/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v9}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/MiuiAdnRecord;Lcom/android/internal/telephony/MiuiAdnRecord;)Z

    move-result v16

    .restart local v16       #success:Z
    goto :goto_1

    .line 167
    .end local v9           #adn:Lcom/android/internal/telephony/MiuiAdnRecord;
    .end local v10           #anr:Ljava/lang/String;
    .end local v12           #emails:[Ljava/lang/String;
    .end local v15           #strEmail:Ljava/lang/String;
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .local v11, buf:Ljava/lang/StringBuilder;
    packed-switch v13, :pswitch_data_1

    .line 176
    :goto_3
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 184
    .local v14, resultUri:Landroid/net/Uri;
    goto :goto_2

    .line 170
    .end local v14           #resultUri:Landroid/net/Uri;
    :pswitch_2
    const-string v2, "adn/"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 173
    :pswitch_3
    const-string v2, "fdn/"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 168
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 102
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :pswitch_0
    const/16 v0, 0x6f3a

    invoke-direct {p0, v0, p3, p4}, Lcom/android/internal/telephony/MiuiIccProvider;->loadFromEf(ILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 106
    :pswitch_1
    const/16 v0, 0x6f3b

    invoke-direct {p0, v0, p3, p4}, Lcom/android/internal/telephony/MiuiIccProvider;->loadFromEf(ILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 108
    :pswitch_2
    const/16 v0, 0x6f49

    invoke-direct {p0, v0, p3, p4}, Lcom/android/internal/telephony/MiuiIccProvider;->loadFromEf(ILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 110
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getFreeAdn()Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getAdnCapacity()Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 114
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getStorage()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->isPhoneBookReady()Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 118
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->isUsimPhoneBook()Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 120
    :pswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccProvider;->getLastError()Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 21
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 190
    const/4 v6, 0x0

    .line 191
    .local v6, pin2:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v16

    .line 192
    .local v16, match:I
    packed-switch v16, :pswitch_data_0

    .line 201
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 204
    .local v3, efid:I
    :goto_0
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 205
    .local v9, tag:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 208
    :cond_0
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 210
    .local v10, number:Ljava/lang/String;
    const-string v2, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, newTag:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    const-string v2, "newName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 214
    :cond_1
    const-string v2, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, newNumber:Ljava/lang/String;
    const-string v2, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 219
    .local v15, index:Ljava/lang/Integer;
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_3

    .line 220
    if-eqz v15, :cond_2

    .line 221
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v20

    .line 239
    .local v20, success:Z
    :goto_1
    if-nez v20, :cond_6

    const/4 v2, 0x0

    :goto_2
    return v2

    .line 197
    .end local v3           #efid:I
    .end local v4           #newTag:Ljava/lang/String;
    .end local v5           #newNumber:Ljava/lang/String;
    .end local v9           #tag:Ljava/lang/String;
    .end local v10           #number:Ljava/lang/String;
    .end local v15           #index:Ljava/lang/Integer;
    .end local v20           #success:Z
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 198
    .restart local v3       #efid:I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 199
    goto :goto_0

    .restart local v4       #newTag:Ljava/lang/String;
    .restart local v5       #newNumber:Ljava/lang/String;
    .restart local v9       #tag:Ljava/lang/String;
    .restart local v10       #number:Ljava/lang/String;
    .restart local v15       #index:Ljava/lang/Integer;
    :cond_2
    move-object/from16 v7, p0

    move v8, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    .line 223
    invoke-direct/range {v7 .. v13}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    .restart local v20       #success:Z
    goto :goto_1

    .line 226
    .end local v20           #success:Z
    :cond_3
    const-string v2, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 227
    .local v19, strEmail:Ljava/lang/String;
    const/16 v18, 0x0

    .line 228
    .local v18, newEmails:[Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 229
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v18           #newEmails:[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v19, v18, v2

    .line 231
    .restart local v18       #newEmails:[Ljava/lang/String;
    :cond_4
    const-string v2, "newAnr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 232
    .local v17, newAnr:Ljava/lang/String;
    new-instance v14, Lcom/android/internal/telephony/MiuiAdnRecord;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v14, v4, v5, v0, v1}, Lcom/android/internal/telephony/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .local v14, adn:Lcom/android/internal/telephony/MiuiAdnRecord;
    if-eqz v15, :cond_5

    .line 234
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v2}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfByIndex(ILcom/android/internal/telephony/MiuiAdnRecord;I)Z

    move-result v20

    .restart local v20       #success:Z
    goto :goto_1

    .line 236
    .end local v20           #success:Z
    :cond_5
    new-instance v2, Lcom/android/internal/telephony/MiuiAdnRecord;

    const/4 v7, 0x0

    const-string v8, ""

    invoke-direct {v2, v9, v10, v7, v8}, Lcom/android/internal/telephony/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v14}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/MiuiAdnRecord;Lcom/android/internal/telephony/MiuiAdnRecord;)Z

    move-result v20

    .restart local v20       #success:Z
    goto :goto_1

    .line 239
    .end local v14           #adn:Lcom/android/internal/telephony/MiuiAdnRecord;
    .end local v17           #newAnr:Ljava/lang/String;
    .end local v18           #newEmails:[Ljava/lang/String;
    .end local v19           #strEmail:Ljava/lang/String;
    :cond_6
    const/4 v2, 0x1

    goto :goto_2

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
