.class Lorg/inaturalist/android/ExploreSearchActivity$4;
.super Ljava/lang/Object;
.source "ExploreSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreSearchActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreSearchActivity;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$4;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_1

    .line 241
    iget-object p2, p0, Lorg/inaturalist/android/ExploreSearchActivity$4;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ExploreSearchActivity;->access$800(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lorg/inaturalist/android/ExploreSearchActivity$4$1;

    invoke-direct {v0, p0, p1}, Lorg/inaturalist/android/ExploreSearchActivity$4$1;-><init>(Lorg/inaturalist/android/ExploreSearchActivity$4;Landroid/view/View;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 248
    iget-object p2, p0, Lorg/inaturalist/android/ExploreSearchActivity$4;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity$4;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreSearchActivity;->access$300(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p2, Lorg/inaturalist/android/ExploreSearchActivity;->mActiveSearchType:I

    .line 249
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$4;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {p1, v1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$1000(Lorg/inaturalist/android/ExploreSearchActivity;Z)V

    :cond_1
    return-void
.end method
