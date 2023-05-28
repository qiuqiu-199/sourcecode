.class Landroid/support/v7/app/MediaRouteChooserDialog$1;
.super Landroid/os/AsyncTask;
.source "MediaRouteChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteChooserDialog;->refreshRoutes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mNewRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v7/app/MediaRouteChooserDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteChooserDialog;)V
    .locals 0

    .line 208
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$1;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 208
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 220
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$1;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    monitor-enter p1

    .line 221
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialog$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog$1;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->getInstance(Landroid/content/Context;)Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$1;->mNewRoutes:Ljava/util/ArrayList;

    .line 223
    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->access$200(Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;Ljava/util/List;)V

    .line 225
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 208
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 231
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$1;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-static {p1}, Landroid/support/v7/app/MediaRouteChooserDialog;->access$300(Landroid/support/v7/app/MediaRouteChooserDialog;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 232
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$1;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-static {p1}, Landroid/support/v7/app/MediaRouteChooserDialog;->access$300(Landroid/support/v7/app/MediaRouteChooserDialog;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog$1;->mNewRoutes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 233
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$1;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-static {p1}, Landroid/support/v7/app/MediaRouteChooserDialog;->access$300(Landroid/support/v7/app/MediaRouteChooserDialog;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->access$400()Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 234
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$1;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-static {p1}, Landroid/support/v7/app/MediaRouteChooserDialog;->access$500(Landroid/support/v7/app/MediaRouteChooserDialog;)Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->notifyDataSetChanged()V

    .line 235
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$1;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/app/MediaRouteChooserDialog;->access$602(Landroid/support/v7/app/MediaRouteChooserDialog;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$1;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteChooserDialog;->access$100(Landroid/support/v7/app/MediaRouteChooserDialog;)Landroid/support/v7/media/MediaRouter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog$1;->mNewRoutes:Ljava/util/ArrayList;

    .line 214
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog$1;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$1;->mNewRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteChooserDialog;->onFilterRoutes(Ljava/util/List;)V

    return-void
.end method
