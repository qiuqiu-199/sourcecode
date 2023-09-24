.class Lorg/inaturalist/android/ObservationViewerActivity$33;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->checkForTaxonDisagreement(ILjava/lang/String;Ljava/lang/String;Lorg/inaturalist/android/ObservationViewerActivity$onDisagreement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationViewerActivity;

.field final synthetic val$cb:Lorg/inaturalist/android/ObservationViewerActivity$onDisagreement;

.field final synthetic val$disagreementRadioButton:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;Landroid/widget/RadioButton;Lorg/inaturalist/android/ObservationViewerActivity$onDisagreement;)V
    .locals 0

    .line 2510
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$33;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$33;->val$disagreementRadioButton:Landroid/widget/RadioButton;

    iput-object p3, p0, Lorg/inaturalist/android/ObservationViewerActivity$33;->val$cb:Lorg/inaturalist/android/ObservationViewerActivity$onDisagreement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2513
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$33;->val$disagreementRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    .line 2514
    iget-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$33;->val$cb:Lorg/inaturalist/android/ObservationViewerActivity$onDisagreement;

    invoke-interface {p2, p1}, Lorg/inaturalist/android/ObservationViewerActivity$onDisagreement;->onDisagreement(Z)V

    return-void
.end method
