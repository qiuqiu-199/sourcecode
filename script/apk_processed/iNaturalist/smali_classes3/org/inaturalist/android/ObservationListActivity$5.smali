.class Lorg/inaturalist/android/ObservationListActivity$5;
.super Ljava/lang/Object;
.source "ObservationListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationListActivity;->onRefreshView(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationListActivity;

.field final synthetic val$pullToRefresh:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationListActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0

    .line 883
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$5;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationListActivity$5;->val$pullToRefresh:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x64

    .line 887
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 889
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 891
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$5;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    new-instance v1, Lorg/inaturalist/android/ObservationListActivity$5$1;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationListActivity$5$1;-><init>(Lorg/inaturalist/android/ObservationListActivity$5;)V

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
