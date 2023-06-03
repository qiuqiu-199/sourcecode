.class Lorg/inaturalist/android/CommentsIdsAdapter$3;
.super Ljava/lang/Object;
.source "CommentsIdsAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$isComment:Z

.field final synthetic val$item:Lorg/inaturalist/android/BetterJSONObject;

.field final synthetic val$loading:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/CommentsIdsAdapter;Landroid/view/View;Lorg/inaturalist/android/BetterJSONObject;Z)V
    .locals 0

    .line 174
    iput-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3;->val$loading:Landroid/view/View;

    iput-object p3, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3;->val$item:Lorg/inaturalist/android/BetterJSONObject;

    iput-boolean p4, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3;->val$isComment:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const p1, 0x7f0a00f1

    if-eq p2, p1, :cond_3

    const p1, 0x7f0a0113

    if-eq p2, p1, :cond_1

    const p1, 0x7f0a02ea

    if-eq p2, p1, :cond_0

    goto :goto_2

    .line 179
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3;->val$loading:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$100(Lorg/inaturalist/android/CommentsIdsAdapter;)Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;

    move-result-object p1

    iget-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3;->val$item:Lorg/inaturalist/android/BetterJSONObject;

    invoke-interface {p1, p2}, Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;->onIdentificationRestored(Lorg/inaturalist/android/BetterJSONObject;)V

    goto :goto_2

    .line 207
    :cond_1
    iget-boolean p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3;->val$isComment:Z

    if-eqz p1, :cond_2

    .line 208
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$100(Lorg/inaturalist/android/CommentsIdsAdapter;)Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;

    move-result-object p1

    iget-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3;->val$item:Lorg/inaturalist/android/BetterJSONObject;

    invoke-interface {p1, p2}, Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;->onCommentUpdated(Lorg/inaturalist/android/BetterJSONObject;)V

    goto :goto_2

    .line 210
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$100(Lorg/inaturalist/android/CommentsIdsAdapter;)Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;

    move-result-object p1

    iget-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3;->val$item:Lorg/inaturalist/android/BetterJSONObject;

    invoke-interface {p1, p2}, Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;->onIdentificationUpdated(Lorg/inaturalist/android/BetterJSONObject;)V

    goto :goto_2

    .line 186
    :cond_3
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$200(Lorg/inaturalist/android/CommentsIdsAdapter;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v0

    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$000(Lorg/inaturalist/android/CommentsIdsAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-boolean p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3;->val$isComment:Z

    if-eqz p2, :cond_4

    const p2, 0x7f100125

    goto :goto_0

    :cond_4
    const p2, 0x7f100129

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$3;->val$isComment:Z

    if-eqz p1, :cond_5

    const p1, 0x7f100126

    goto :goto_1

    :cond_5
    const p1, 0x7f10012a

    .line 187
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lorg/inaturalist/android/CommentsIdsAdapter$3$1;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/CommentsIdsAdapter$3$1;-><init>(Lorg/inaturalist/android/CommentsIdsAdapter$3;)V

    new-instance v4, Lorg/inaturalist/android/CommentsIdsAdapter$3$2;

    invoke-direct {v4, p0}, Lorg/inaturalist/android/CommentsIdsAdapter$3$2;-><init>(Lorg/inaturalist/android/CommentsIdsAdapter$3;)V

    const v5, 0x7f1003b1

    const v6, 0x7f100260

    .line 186
    invoke-virtual/range {v0 .. v6}, Lorg/inaturalist/android/ActivityHelper;->confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    :goto_2
    return-void
.end method
