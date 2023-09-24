.class Lorg/inaturalist/android/ObservationViewerActivity$13;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->discardAddComment()V
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

    .line 1166
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$13;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1169
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
