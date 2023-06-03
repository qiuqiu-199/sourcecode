.class Lorg/inaturalist/android/ObservationViewerActivity$15;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->setupTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationViewerActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 1293
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$15;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    .line 1296
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$15;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$2400(Lorg/inaturalist/android/ObservationViewerActivity;Ljava/lang/String;)V

    return-void
.end method
