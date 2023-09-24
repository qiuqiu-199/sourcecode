.class Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$1;
.super Ljava/lang/Object;
.source "TaxonSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->toggleLoading(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

.field final synthetic val$isLoading:Z


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;Z)V
    .locals 0

    .line 212
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$1;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iput-boolean p2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$1;->val$isLoading:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 215
    iget-boolean v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$1;->val$isLoading:Z

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$1;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonSearchActivity;->access$000(Lorg/inaturalist/android/TaxonSearchActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$1;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonSearchActivity;->access$100(Lorg/inaturalist/android/TaxonSearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$1;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->access$200(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$1;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->access$202(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$1;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->access$200(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 226
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "is_custom"

    const/4 v2, 0x1

    .line 228
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 229
    iget-object v2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$1;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-static {v2}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->access$300(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 231
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 233
    :goto_1
    iget-object v1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$1;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iget-object v1, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    iget-boolean v1, v1, Lorg/inaturalist/android/TaxonSearchActivity;->mSuggestId:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$1;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-static {v1}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->access$200(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$1;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 238
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$1;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonSearchActivity;->access$000(Lorg/inaturalist/android/TaxonSearchActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method
