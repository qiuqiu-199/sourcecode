.class Lorg/inaturalist/android/UserActivity$2;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/UserActivity;->initPullToRefreshList(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/UserActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/UserActivity;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity$2;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity$2;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {v0}, Lorg/inaturalist/android/UserActivity;->access$200(Lorg/inaturalist/android/UserActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 456
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_NEWS:Ljava/lang/String;

    iget-object v2, p0, Lorg/inaturalist/android/UserActivity$2;->this$0:Lorg/inaturalist/android/UserActivity;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 459
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_UPDATES:Ljava/lang/String;

    iget-object v3, p0, Lorg/inaturalist/android/UserActivity$2;->this$0:Lorg/inaturalist/android/UserActivity;

    const-class v4, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "following"

    .line 460
    iget-object v2, p0, Lorg/inaturalist/android/UserActivity$2;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {v2}, Lorg/inaturalist/android/UserActivity;->access$1100(Lorg/inaturalist/android/UserActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    if-ne p1, v2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object p1, v0

    .line 463
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity$2;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
