.class final synthetic Lorg/piwik/sdk/extra/DownloadTracker$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lorg/piwik/sdk/extra/DownloadTracker;

.field private final arg$2:Z

.field private final arg$3:Lorg/piwik/sdk/TrackMe;

.field private final arg$4:Lorg/piwik/sdk/extra/DownloadTracker$Extra;


# direct methods
.method constructor <init>(Lorg/piwik/sdk/extra/DownloadTracker;ZLorg/piwik/sdk/TrackMe;Lorg/piwik/sdk/extra/DownloadTracker$Extra;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/piwik/sdk/extra/DownloadTracker$$Lambda$0;->arg$1:Lorg/piwik/sdk/extra/DownloadTracker;

    iput-boolean p2, p0, Lorg/piwik/sdk/extra/DownloadTracker$$Lambda$0;->arg$2:Z

    iput-object p3, p0, Lorg/piwik/sdk/extra/DownloadTracker$$Lambda$0;->arg$3:Lorg/piwik/sdk/TrackMe;

    iput-object p4, p0, Lorg/piwik/sdk/extra/DownloadTracker$$Lambda$0;->arg$4:Lorg/piwik/sdk/extra/DownloadTracker$Extra;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/piwik/sdk/extra/DownloadTracker$$Lambda$0;->arg$1:Lorg/piwik/sdk/extra/DownloadTracker;

    iget-boolean v1, p0, Lorg/piwik/sdk/extra/DownloadTracker$$Lambda$0;->arg$2:Z

    iget-object v2, p0, Lorg/piwik/sdk/extra/DownloadTracker$$Lambda$0;->arg$3:Lorg/piwik/sdk/TrackMe;

    iget-object v3, p0, Lorg/piwik/sdk/extra/DownloadTracker$$Lambda$0;->arg$4:Lorg/piwik/sdk/extra/DownloadTracker$Extra;

    invoke-virtual {v0, v1, v2, v3}, Lorg/piwik/sdk/extra/DownloadTracker;->lambda$trackNewAppDownload$0$DownloadTracker(ZLorg/piwik/sdk/TrackMe;Lorg/piwik/sdk/extra/DownloadTracker$Extra;)V

    return-void
.end method
