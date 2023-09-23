.class public Lnordpol/android/TagDispatcherBuilder;
.super Ljava/lang/Object;
.source "TagDispatcherBuilder.java"


# instance fields
.field activity:Landroid/app/Activity;

.field enableBroadcomWorkaround:Z

.field enableDispatchingOnUiThread:Z

.field enableNdefCheck:Z

.field enableReaderMode:Z

.field enableSounds:Z

.field enableUnavailableNfcUserPrompt:Z

.field tagDiscoveredListener:Lnordpol/android/OnDiscoveredTagListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lnordpol/android/OnDiscoveredTagListener;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lnordpol/android/TagDispatcherBuilder;->activity:Landroid/app/Activity;

    .line 53
    iput-object p2, p0, Lnordpol/android/TagDispatcherBuilder;->tagDiscoveredListener:Lnordpol/android/OnDiscoveredTagListener;

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lnordpol/android/TagDispatcherBuilder;->enableUnavailableNfcUserPrompt:Z

    .line 55
    iput-boolean p1, p0, Lnordpol/android/TagDispatcherBuilder;->enableSounds:Z

    .line 56
    iput-boolean p1, p0, Lnordpol/android/TagDispatcherBuilder;->enableDispatchingOnUiThread:Z

    .line 57
    iput-boolean p1, p0, Lnordpol/android/TagDispatcherBuilder;->enableBroadcomWorkaround:Z

    .line 58
    iput-boolean p1, p0, Lnordpol/android/TagDispatcherBuilder;->enableReaderMode:Z

    .line 59
    iput-boolean p1, p0, Lnordpol/android/TagDispatcherBuilder;->enableNdefCheck:Z

    return-void
.end method


# virtual methods
.method public build()Lnordpol/android/TagDispatcher;
    .locals 1

    .line 155
    new-instance v0, Lnordpol/android/TagDispatcher;

    invoke-direct {v0, p0}, Lnordpol/android/TagDispatcher;-><init>(Lnordpol/android/TagDispatcherBuilder;)V

    return-object v0
.end method

.method public enableBroadcomWorkaround(Z)Lnordpol/android/TagDispatcherBuilder;
    .locals 0

    .line 115
    iput-boolean p1, p0, Lnordpol/android/TagDispatcherBuilder;->enableBroadcomWorkaround:Z

    return-object p0
.end method

.method public enableDispatchingOnUiThread(Z)Lnordpol/android/TagDispatcherBuilder;
    .locals 0

    .line 99
    iput-boolean p1, p0, Lnordpol/android/TagDispatcherBuilder;->enableDispatchingOnUiThread:Z

    return-object p0
.end method

.method public enableSounds(Z)Lnordpol/android/TagDispatcherBuilder;
    .locals 0

    .line 87
    iput-boolean p1, p0, Lnordpol/android/TagDispatcherBuilder;->enableSounds:Z

    return-object p0
.end method

.method public enableUnavailableNfcUserPrompt(Z)Lnordpol/android/TagDispatcherBuilder;
    .locals 0

    .line 76
    iput-boolean p1, p0, Lnordpol/android/TagDispatcherBuilder;->enableUnavailableNfcUserPrompt:Z

    return-object p0
.end method
