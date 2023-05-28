.class Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$1;
.super Landroid/widget/Filter;
.source "ProjectSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;-><init>(Lorg/inaturalist/android/ProjectSelectorActivity;Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

.field final synthetic val$this$0:Lorg/inaturalist/android/ProjectSelectorActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;Lorg/inaturalist/android/ProjectSelectorActivity;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$1;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$1;->val$this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .line 396
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_3

    .line 399
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 400
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$1;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    invoke-static {v2}, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->access$700(Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 401
    iget-object v2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$1;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    invoke-static {v2}, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->access$700(Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    :try_start_0
    const-string v4, "is_header"

    const/4 v5, 0x0

    .line 403
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    .line 404
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 407
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 412
    :cond_2
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 413
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    :cond_3
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 420
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$1;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->access$802(Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;Ljava/util/List;)Ljava/util/List;

    .line 421
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$1;->this$1:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    invoke-virtual {p1}, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->notifyDataSetChanged()V

    return-void
.end method
