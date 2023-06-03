.class Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;
.super Landroid/widget/Filter;
.source "TaxonSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4

    .line 249
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 252
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 253
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 254
    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_1

    .line 257
    :cond_0
    iget-object v2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->access$400(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;Z)V

    .line 261
    iget-object v2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->access$302(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    iget-object v2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iget-object v2, v2, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/inaturalist/android/TaxonSearchActivity;->access$500(Lorg/inaturalist/android/TaxonSearchActivity;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 264
    iget-object v3, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-static {v3}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->access$300(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 270
    :cond_1
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 271
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 275
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-static {p1, v1}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->access$400(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;Z)V

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 282
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 284
    iget v3, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v3, :cond_3

    iget-object v3, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 285
    iget-object p2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-static {p2}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->access$300(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-static {p2}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->access$300(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 287
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "is_custom"

    .line 289
    invoke-virtual {p2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 290
    iget-object v3, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-static {v3}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->access$300(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 292
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 294
    :goto_1
    iget-object v1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iget-object v1, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    iget-boolean v1, v1, Lorg/inaturalist/android/TaxonSearchActivity;->mSuggestId:Z

    if-nez v1, :cond_1

    invoke-virtual {v0, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 297
    :cond_1
    iget-object p2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iget-object p2, p2, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-static {p2}, Lorg/inaturalist/android/TaxonSearchActivity;->access$600(Lorg/inaturalist/android/TaxonSearchActivity;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iget-object p2, p2, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    iget-boolean p2, p2, Lorg/inaturalist/android/TaxonSearchActivity;->mSuggestId:Z

    if-nez p2, :cond_2

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 299
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-static {p1, v0}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->access$202(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 300
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-virtual {p1}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->notifyDataSetChanged()V

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_6

    .line 302
    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz p2, :cond_6

    .line 303
    iget-object p2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-static {p2}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->access$300(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-static {p2}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->access$300(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_4

    .line 305
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v3, "is_custom"

    .line 307
    invoke-virtual {p2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 308
    iget-object v3, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-static {v3}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->access$300(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 310
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 312
    :goto_2
    iget-object v1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iget-object v1, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    iget-boolean v1, v1, Lorg/inaturalist/android/TaxonSearchActivity;->mSuggestId:Z

    if-nez v1, :cond_4

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_4
    iget-object p2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iget-object p2, p2, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-static {p2}, Lorg/inaturalist/android/TaxonSearchActivity;->access$600(Lorg/inaturalist/android/TaxonSearchActivity;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iget-object p2, p2, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    iget-boolean p2, p2, Lorg/inaturalist/android/TaxonSearchActivity;->mSuggestId:Z

    if-nez p2, :cond_5

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 316
    :cond_5
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-static {p1, v0}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->access$202(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 319
    :cond_6
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-virtual {p1}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->notifyDataSetInvalidated()V

    :goto_3
    return-void
.end method
