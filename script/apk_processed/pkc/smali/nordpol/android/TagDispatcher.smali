.class public Lnordpol/android/TagDispatcher;
.super Ljava/lang/Object;
.source "TagDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnordpol/android/TagDispatcher$NfcStatus;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private broadcomWorkaround:Z

.field private disableNdefCheck:Z

.field private disableSounds:Z

.field private dispatchOnUiThread:Z

.field private handleUnavailableNfc:Z

.field private noReaderMode:Z

.field private tagDiscoveredListener:Lnordpol/android/OnDiscoveredTagListener;


# direct methods
.method constructor <init>(Lnordpol/android/TagDispatcherBuilder;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-object v0, p1, Lnordpol/android/TagDispatcherBuilder;->activity:Landroid/app/Activity;

    iput-object v0, p0, Lnordpol/android/TagDispatcher;->activity:Landroid/app/Activity;

    .line 61
    iget-object v0, p1, Lnordpol/android/TagDispatcherBuilder;->tagDiscoveredListener:Lnordpol/android/OnDiscoveredTagListener;

    iput-object v0, p0, Lnordpol/android/TagDispatcher;->tagDiscoveredListener:Lnordpol/android/OnDiscoveredTagListener;

    .line 62
    iget-boolean v0, p1, Lnordpol/android/TagDispatcherBuilder;->enableUnavailableNfcUserPrompt:Z

    iput-boolean v0, p0, Lnordpol/android/TagDispatcher;->handleUnavailableNfc:Z

    .line 63
    iget-boolean v0, p1, Lnordpol/android/TagDispatcherBuilder;->enableSounds:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lnordpol/android/TagDispatcher;->disableSounds:Z

    .line 64
    iget-boolean v0, p1, Lnordpol/android/TagDispatcherBuilder;->enableDispatchingOnUiThread:Z

    iput-boolean v0, p0, Lnordpol/android/TagDispatcher;->dispatchOnUiThread:Z

    .line 65
    iget-boolean v0, p1, Lnordpol/android/TagDispatcherBuilder;->enableBroadcomWorkaround:Z

    iput-boolean v0, p0, Lnordpol/android/TagDispatcher;->broadcomWorkaround:Z

    .line 66
    iget-boolean v0, p1, Lnordpol/android/TagDispatcherBuilder;->enableReaderMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lnordpol/android/TagDispatcher;->noReaderMode:Z

    .line 67
    iget-boolean p1, p1, Lnordpol/android/TagDispatcherBuilder;->enableNdefCheck:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lnordpol/android/TagDispatcher;->disableNdefCheck:Z

    return-void
.end method

.method static synthetic access$000(Lnordpol/android/TagDispatcher;)Lnordpol/android/OnDiscoveredTagListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lnordpol/android/TagDispatcher;->tagDiscoveredListener:Lnordpol/android/OnDiscoveredTagListener;

    return-object p0
.end method

.method static synthetic access$100(Lnordpol/android/TagDispatcher;Landroid/nfc/Tag;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lnordpol/android/TagDispatcher;->dispatchTag(Landroid/nfc/Tag;)V

    return-void
.end method

.method private disableForegroundDispatch(Landroid/nfc/NfcAdapter;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lnordpol/android/TagDispatcher;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    return-void
.end method

.method private disableReaderMode(Landroid/nfc/NfcAdapter;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 354
    iget-object v0, p0, Lnordpol/android/TagDispatcher;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/nfc/NfcAdapter;->disableReaderMode(Landroid/app/Activity;)V

    return-void
.end method

.method private dispatchTag(Landroid/nfc/Tag;)V
    .locals 2

    .line 304
    iget-boolean v0, p0, Lnordpol/android/TagDispatcher;->dispatchOnUiThread:Z

    if-eqz v0, :cond_1

    .line 305
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 306
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lnordpol/android/TagDispatcher$1;

    invoke-direct {v1, p0, p1}, Lnordpol/android/TagDispatcher$1;-><init>(Lnordpol/android/TagDispatcher;Landroid/nfc/Tag;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lnordpol/android/TagDispatcher;->tagDiscoveredListener:Lnordpol/android/OnDiscoveredTagListener;

    invoke-interface {v0, p1}, Lnordpol/android/OnDiscoveredTagListener;->tagDiscovered(Landroid/nfc/Tag;)V

    goto :goto_0

    .line 317
    :cond_1
    new-instance v0, Lnordpol/android/TagDispatcher$2;

    invoke-direct {v0, p0, p1}, Lnordpol/android/TagDispatcher$2;-><init>(Lnordpol/android/TagDispatcher;Landroid/nfc/Tag;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lnordpol/android/TagDispatcher$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method private enableForegroundDispatch(Landroid/nfc/NfcAdapter;)V
    .locals 3

    .line 362
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnordpol/android/TagDispatcher;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lnordpol/android/TagDispatcher;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 363
    invoke-direct {p0, p1, v0}, Lnordpol/android/TagDispatcher;->enableForegroundDispatch(Landroid/nfc/NfcAdapter;Landroid/content/Intent;)V

    return-void
.end method

.method private enableForegroundDispatch(Landroid/nfc/NfcAdapter;Landroid/content/Intent;)V
    .locals 6

    .line 367
    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lnordpol/android/TagDispatcher;->activity:Landroid/app/Activity;

    const/high16 v1, 0x10000000

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 369
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lnordpol/android/TagDispatcher;->activity:Landroid/app/Activity;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/content/IntentFilter;

    aput-object v0, v4, v2

    new-array v0, v3, [[Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    const-class v5, Landroid/nfc/tech/IsoDep;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    aput-object v3, v0, v2

    invoke-virtual {p1, v1, p2, v4, v0}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private enableReaderMode(Landroid/nfc/NfcAdapter;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 329
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 330
    iget-boolean v1, p0, Lnordpol/android/TagDispatcher;->broadcomWorkaround:Z

    if-eqz v1, :cond_0

    const-string v1, "presence"

    const/16 v2, 0x1388

    .line 335
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    :cond_0
    new-instance v1, Lnordpol/android/TagDispatcher$3;

    invoke-direct {v1, p0}, Lnordpol/android/TagDispatcher$3;-><init>(Lnordpol/android/TagDispatcher;)V

    const/4 v2, 0x1

    .line 343
    iget-boolean v3, p0, Lnordpol/android/TagDispatcher;->disableSounds:Z

    if-eqz v3, :cond_1

    const/16 v2, 0x101

    .line 346
    :cond_1
    iget-boolean v3, p0, Lnordpol/android/TagDispatcher;->disableNdefCheck:Z

    if-eqz v3, :cond_2

    or-int/lit16 v2, v2, 0x80

    .line 349
    :cond_2
    iget-object v3, p0, Lnordpol/android/TagDispatcher;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    return-void
.end method

.method private toastMessage(Ljava/lang/String;)V
    .locals 2

    .line 380
    iget-object v0, p0, Lnordpol/android/TagDispatcher;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public disableExclusiveNfc()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 275
    iget-object v0, p0, Lnordpol/android/TagDispatcher;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 278
    invoke-direct {p0, v0}, Lnordpol/android/TagDispatcher;->disableReaderMode(Landroid/nfc/NfcAdapter;)V

    goto :goto_0

    .line 280
    :cond_0
    invoke-direct {p0, v0}, Lnordpol/android/TagDispatcher;->disableForegroundDispatch(Landroid/nfc/NfcAdapter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enableExclusiveNfc()Lnordpol/android/TagDispatcher$NfcStatus;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 250
    iget-object v0, p0, Lnordpol/android/TagDispatcher;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 252
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    iget-boolean v0, p0, Lnordpol/android/TagDispatcher;->handleUnavailableNfc:Z

    if-eqz v0, :cond_0

    const-string v0, "Please activate NFC and then press back"

    .line 254
    invoke-direct {p0, v0}, Lnordpol/android/TagDispatcher;->toastMessage(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lnordpol/android/TagDispatcher;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.NFC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 257
    :cond_0
    sget-object v0, Lnordpol/android/TagDispatcher$NfcStatus;->AVAILABLE_DISABLED:Lnordpol/android/TagDispatcher$NfcStatus;

    return-object v0

    .line 259
    :cond_1
    iget-boolean v1, p0, Lnordpol/android/TagDispatcher;->noReaderMode:Z

    if-nez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 260
    invoke-direct {p0, v0}, Lnordpol/android/TagDispatcher;->enableReaderMode(Landroid/nfc/NfcAdapter;)V

    goto :goto_0

    .line 262
    :cond_2
    invoke-direct {p0, v0}, Lnordpol/android/TagDispatcher;->enableForegroundDispatch(Landroid/nfc/NfcAdapter;)V

    .line 264
    :goto_0
    sget-object v0, Lnordpol/android/TagDispatcher$NfcStatus;->AVAILABLE_ENABLED:Lnordpol/android/TagDispatcher$NfcStatus;

    return-object v0

    .line 266
    :cond_3
    iget-boolean v0, p0, Lnordpol/android/TagDispatcher;->handleUnavailableNfc:Z

    if-eqz v0, :cond_4

    const-string v0, "NFC is not available on this device"

    invoke-direct {p0, v0}, Lnordpol/android/TagDispatcher;->toastMessage(Ljava/lang/String;)V

    .line 267
    :cond_4
    sget-object v0, Lnordpol/android/TagDispatcher$NfcStatus;->NOT_AVAILABLE:Lnordpol/android/TagDispatcher$NfcStatus;

    return-object v0
.end method

.method public interceptIntent(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "android.nfc.extra.TAG"

    .line 294
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/nfc/Tag;

    if-eqz p1, :cond_0

    .line 296
    invoke-direct {p0, p1}, Lnordpol/android/TagDispatcher;->dispatchTag(Landroid/nfc/Tag;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
