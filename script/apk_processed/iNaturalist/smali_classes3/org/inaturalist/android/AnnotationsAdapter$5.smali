.class Lorg/inaturalist/android/AnnotationsAdapter$5;
.super Ljava/lang/Object;
.source "AnnotationsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/AnnotationsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/AnnotationsAdapter;

.field final synthetic val$user:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/AnnotationsAdapter;Lorg/json/JSONObject;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter$5;->this$0:Lorg/inaturalist/android/AnnotationsAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/AnnotationsAdapter$5;->val$user:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 360
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/AnnotationsAdapter$5;->this$0:Lorg/inaturalist/android/AnnotationsAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/AnnotationsAdapter;->access$300(Lorg/inaturalist/android/AnnotationsAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/inaturalist/android/UserProfile;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "user"

    .line 361
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v2, p0, Lorg/inaturalist/android/AnnotationsAdapter$5;->val$user:Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 362
    iget-object v0, p0, Lorg/inaturalist/android/AnnotationsAdapter$5;->this$0:Lorg/inaturalist/android/AnnotationsAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/AnnotationsAdapter;->access$300(Lorg/inaturalist/android/AnnotationsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
