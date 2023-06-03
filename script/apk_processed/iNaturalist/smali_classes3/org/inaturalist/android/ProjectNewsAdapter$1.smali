.class Lorg/inaturalist/android/ProjectNewsAdapter$1;
.super Ljava/lang/Object;
.source "ProjectNewsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectNewsAdapter;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProjectNewsAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectNewsAdapter;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/inaturalist/android/ProjectNewsAdapter$1;->this$0:Lorg/inaturalist/android/ProjectNewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Lorg/json/JSONObject;

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ProjectNewsAdapter$1;->compare(Lorg/json/JSONObject;Lorg/json/JSONObject;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/json/JSONObject;Lorg/json/JSONObject;)I
    .locals 1

    .line 41
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    .line 42
    new-instance p1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    const-string p2, "updated_at"

    .line 44
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    const-string p2, "updated_at"

    invoke-virtual {v0, p2}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result p1

    return p1
.end method
