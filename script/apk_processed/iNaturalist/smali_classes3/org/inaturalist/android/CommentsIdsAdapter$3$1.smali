.class Lorg/inaturalist/android/CommentsIdsAdapter$3$1;
.super Ljava/lang/Object;
.source "CommentsIdsAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/CommentsIdsAdapter$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/CommentsIdsAdapter$3;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/CommentsIdsAdapter$3;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3$1;->this$1:Lorg/inaturalist/android/CommentsIdsAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 191
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3$1;->this$1:Lorg/inaturalist/android/CommentsIdsAdapter$3;

    iget-object p1, p1, Lorg/inaturalist/android/CommentsIdsAdapter$3;->val$loading:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3$1;->this$1:Lorg/inaturalist/android/CommentsIdsAdapter$3;

    iget-boolean p1, p1, Lorg/inaturalist/android/CommentsIdsAdapter$3;->val$isComment:Z

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3$1;->this$1:Lorg/inaturalist/android/CommentsIdsAdapter$3;

    iget-object p1, p1, Lorg/inaturalist/android/CommentsIdsAdapter$3;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$100(Lorg/inaturalist/android/CommentsIdsAdapter;)Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;

    move-result-object p1

    iget-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3$1;->this$1:Lorg/inaturalist/android/CommentsIdsAdapter$3;

    iget-object p2, p2, Lorg/inaturalist/android/CommentsIdsAdapter$3;->val$item:Lorg/inaturalist/android/BetterJSONObject;

    invoke-interface {p1, p2}, Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;->onCommentRemoved(Lorg/inaturalist/android/BetterJSONObject;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3$1;->this$1:Lorg/inaturalist/android/CommentsIdsAdapter$3;

    iget-object p1, p1, Lorg/inaturalist/android/CommentsIdsAdapter$3;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$100(Lorg/inaturalist/android/CommentsIdsAdapter;)Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;

    move-result-object p1

    iget-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3$1;->this$1:Lorg/inaturalist/android/CommentsIdsAdapter$3;

    iget-object p2, p2, Lorg/inaturalist/android/CommentsIdsAdapter$3;->val$item:Lorg/inaturalist/android/BetterJSONObject;

    invoke-interface {p1, p2}, Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;->onIdentificationRemoved(Lorg/inaturalist/android/BetterJSONObject;)V

    :goto_0
    return-void
.end method
