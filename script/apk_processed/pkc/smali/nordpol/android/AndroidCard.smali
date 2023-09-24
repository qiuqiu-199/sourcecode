.class public Lnordpol/android/AndroidCard;
.super Ljava/lang/Object;
.source "AndroidCard.java"

# interfaces
.implements Lnordpol/IsoCard;


# instance fields
.field private card:Landroid/nfc/tech/IsoDep;

.field private errorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnordpol/OnCardErrorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/nfc/tech/IsoDep;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lnordpol/android/AndroidCard;->errorListeners:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lnordpol/android/AndroidCard;->card:Landroid/nfc/tech/IsoDep;

    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Lnordpol/android/AndroidCard;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-static {p0}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/nfc/tech/IsoDep;->connect()V

    .line 35
    invoke-virtual {p0}, Landroid/nfc/tech/IsoDep;->close()V

    .line 36
    new-instance v0, Lnordpol/android/AndroidCard;

    invoke-direct {v0, p0}, Lnordpol/android/AndroidCard;-><init>(Landroid/nfc/tech/IsoDep;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private notifyListeners(Ljava/io/IOException;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lnordpol/android/AndroidCard;->errorListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnordpol/OnCardErrorListener;

    .line 44
    invoke-interface {v1, p0, p1}, Lnordpol/OnCardErrorListener;->error(Lnordpol/IsoCard;Ljava/io/IOException;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    :try_start_0
    iget-object v0, p0, Lnordpol/android/AndroidCard;->card:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->connect()V

    .line 63
    iget-object v0, p0, Lnordpol/android/AndroidCard;->card:Landroid/nfc/tech/IsoDep;

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Landroid/nfc/tech/IsoDep;->setTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 65
    invoke-direct {p0, v0}, Lnordpol/android/AndroidCard;->notifyListeners(Ljava/io/IOException;)V

    .line 66
    throw v0
.end method

.method public isConnected()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lnordpol/android/AndroidCard;->card:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v0

    return v0
.end method

.method public setTimeout(I)V
    .locals 1

    .line 82
    iget-object v0, p0, Lnordpol/android/AndroidCard;->card:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0, p1}, Landroid/nfc/tech/IsoDep;->setTimeout(I)V

    return-void
.end method

.method public transceive([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    :try_start_0
    iget-object v0, p0, Lnordpol/android/AndroidCard;->card:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0, p1}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 98
    invoke-direct {p0, p1}, Lnordpol/android/AndroidCard;->notifyListeners(Ljava/io/IOException;)V

    .line 99
    throw p1
.end method
