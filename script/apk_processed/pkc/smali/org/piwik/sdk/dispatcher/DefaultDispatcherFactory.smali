.class public Lorg/piwik/sdk/dispatcher/DefaultDispatcherFactory;
.super Ljava/lang/Object;
.source "DefaultDispatcherFactory.java"

# interfaces
.implements Lorg/piwik/sdk/dispatcher/DispatcherFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lorg/piwik/sdk/Tracker;)Lorg/piwik/sdk/dispatcher/Dispatcher;
    .locals 4

    .line 8
    new-instance v0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    new-instance v1, Lorg/piwik/sdk/dispatcher/EventCache;

    new-instance v2, Lorg/piwik/sdk/dispatcher/EventDiskCache;

    invoke-direct {v2, p1}, Lorg/piwik/sdk/dispatcher/EventDiskCache;-><init>(Lorg/piwik/sdk/Tracker;)V

    invoke-direct {v1, v2}, Lorg/piwik/sdk/dispatcher/EventCache;-><init>(Lorg/piwik/sdk/dispatcher/EventDiskCache;)V

    new-instance v2, Lorg/piwik/sdk/tools/Connectivity;

    .line 10
    invoke-virtual {p1}, Lorg/piwik/sdk/Tracker;->getPiwik()Lorg/piwik/sdk/Piwik;

    move-result-object v3

    invoke-virtual {v3}, Lorg/piwik/sdk/Piwik;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/piwik/sdk/tools/Connectivity;-><init>(Landroid/content/Context;)V

    new-instance v3, Lorg/piwik/sdk/dispatcher/PacketFactory;

    .line 11
    invoke-virtual {p1}, Lorg/piwik/sdk/Tracker;->getAPIUrl()Ljava/net/URL;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/piwik/sdk/dispatcher/PacketFactory;-><init>(Ljava/net/URL;)V

    new-instance p1, Lorg/piwik/sdk/dispatcher/DefaultPacketSender;

    invoke-direct {p1}, Lorg/piwik/sdk/dispatcher/DefaultPacketSender;-><init>()V

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;-><init>(Lorg/piwik/sdk/dispatcher/EventCache;Lorg/piwik/sdk/tools/Connectivity;Lorg/piwik/sdk/dispatcher/PacketFactory;Lorg/piwik/sdk/dispatcher/PacketSender;)V

    return-object v0
.end method
