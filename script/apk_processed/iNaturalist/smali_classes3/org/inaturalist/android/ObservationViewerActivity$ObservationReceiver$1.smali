.class Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver$1;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/inaturalist/android/BetterJSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;)V
    .locals 0

    .line 2118
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2118
    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    check-cast p2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver$1;->compare(Lorg/inaturalist/android/BetterJSONObject;Lorg/inaturalist/android/BetterJSONObject;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/inaturalist/android/BetterJSONObject;Lorg/inaturalist/android/BetterJSONObject;)I
    .locals 1

    const-string v0, "created_at"

    .line 2121
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    const-string v0, "created_at"

    .line 2122
    invoke-virtual {p2, v0}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p2

    .line 2123
    invoke-virtual {p1, p2}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result p1

    return p1
.end method
