.class Lorg/inaturalist/android/ObservationViewerActivity$9$3;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity$9;->onIdentificationUpdated(Lorg/inaturalist/android/BetterJSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationViewerActivity$9;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity$9;)V
    .locals 0

    .line 979
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$9$3;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 982
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
