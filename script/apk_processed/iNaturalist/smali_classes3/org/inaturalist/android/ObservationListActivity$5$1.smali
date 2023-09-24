.class Lorg/inaturalist/android/ObservationListActivity$5$1;
.super Ljava/lang/Object;
.source "ObservationListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationListActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationListActivity$5;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationListActivity$5;)V
    .locals 0

    .line 891
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$5$1;->this$1:Lorg/inaturalist/android/ObservationListActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 894
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$5$1;->this$1:Lorg/inaturalist/android/ObservationListActivity$5;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationListActivity$5;->val$pullToRefresh:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onRefreshComplete()V

    return-void
.end method
