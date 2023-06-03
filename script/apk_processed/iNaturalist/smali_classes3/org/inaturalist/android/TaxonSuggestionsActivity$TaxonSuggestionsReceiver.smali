.class Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TaxonSuggestionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/TaxonSuggestionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaxonSuggestionsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/TaxonSuggestionsActivity;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/TaxonSuggestionsActivity;Lorg/inaturalist/android/TaxonSuggestionsActivity$1;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;-><init>(Lorg/inaturalist/android/TaxonSuggestionsActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 101
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->access$000(Lorg/inaturalist/android/TaxonSuggestionsActivity;)Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string p1, "taxon_suggestions"

    .line 103
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const-string v0, "results"

    .line 105
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mTaxonSuggestions:Ljava/util/List;

    const-string v0, "results"

    .line 114
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 116
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 117
    iget-object v1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    iget-object v1, v1, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mTaxonSuggestions:Ljava/util/List;

    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 120
    :cond_1
    iget-object p2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    const/4 v0, 0x0

    iput-object v0, p2, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mTaxonCommonAncestor:Lorg/inaturalist/android/BetterJSONObject;

    const-string p2, "common_ancestor"

    .line 121
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "common_ancestor"

    .line 122
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "taxon"

    .line 123
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 124
    iget-object p2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p2, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mTaxonCommonAncestor:Lorg/inaturalist/android/BetterJSONObject;

    .line 128
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->access$300(Lorg/inaturalist/android/TaxonSuggestionsActivity;)V

    return-void

    .line 107
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->access$100(Lorg/inaturalist/android/TaxonSuggestionsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->access$200(Lorg/inaturalist/android/TaxonSuggestionsActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
