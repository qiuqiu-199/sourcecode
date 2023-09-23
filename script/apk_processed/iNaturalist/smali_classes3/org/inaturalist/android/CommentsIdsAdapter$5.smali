.class Lorg/inaturalist/android/CommentsIdsAdapter$5;
.super Ljava/lang/Object;
.source "CommentsIdsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/CommentsIdsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

.field final synthetic val$item:Lorg/inaturalist/android/BetterJSONObject;

.field final synthetic val$loading:Landroid/view/View;

.field final synthetic val$position:I

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/CommentsIdsAdapter;Ljava/lang/String;Lorg/inaturalist/android/BetterJSONObject;Landroid/view/View;I)V
    .locals 0

    .line 335
    iput-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$5;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter$5;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lorg/inaturalist/android/CommentsIdsAdapter$5;->val$item:Lorg/inaturalist/android/BetterJSONObject;

    iput-object p4, p0, Lorg/inaturalist/android/CommentsIdsAdapter$5;->val$loading:Landroid/view/View;

    iput p5, p0, Lorg/inaturalist/android/CommentsIdsAdapter$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 338
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$5;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$300(Lorg/inaturalist/android/CommentsIdsAdapter;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$5;->val$username:Ljava/lang/String;

    iget-object v0, p0, Lorg/inaturalist/android/CommentsIdsAdapter$5;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$300(Lorg/inaturalist/android/CommentsIdsAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 339
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$5;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$100(Lorg/inaturalist/android/CommentsIdsAdapter;)Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/CommentsIdsAdapter$5;->val$item:Lorg/inaturalist/android/BetterJSONObject;

    invoke-interface {p1, v0}, Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;->onIdentificationRemoved(Lorg/inaturalist/android/BetterJSONObject;)V

    goto :goto_0

    .line 341
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$5;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$100(Lorg/inaturalist/android/CommentsIdsAdapter;)Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/CommentsIdsAdapter$5;->val$item:Lorg/inaturalist/android/BetterJSONObject;

    invoke-interface {p1, v0}, Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;->onIdentificationAdded(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 342
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$5;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    iget-object v0, p0, Lorg/inaturalist/android/CommentsIdsAdapter$5;->val$item:Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "taxon_id"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$402(Lorg/inaturalist/android/CommentsIdsAdapter;I)I

    .line 345
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$5;->val$loading:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$5;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$500(Lorg/inaturalist/android/CommentsIdsAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lorg/inaturalist/android/CommentsIdsAdapter$5;->val$position:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
