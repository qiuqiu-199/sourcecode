.class Lorg/inaturalist/android/CommentsIdsAdapter$1;
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


# direct methods
.method constructor <init>(Lorg/inaturalist/android/CommentsIdsAdapter;Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$1;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter$1;->val$item:Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 132
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/CommentsIdsAdapter$1;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$000(Lorg/inaturalist/android/CommentsIdsAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/inaturalist/android/UserProfile;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "user"

    .line 133
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v2, p0, Lorg/inaturalist/android/CommentsIdsAdapter$1;->val$item:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Lorg/inaturalist/android/CommentsIdsAdapter$1;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$000(Lorg/inaturalist/android/CommentsIdsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
