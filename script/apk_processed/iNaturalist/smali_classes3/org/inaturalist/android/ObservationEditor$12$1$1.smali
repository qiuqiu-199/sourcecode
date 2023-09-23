.class Lorg/inaturalist/android/ObservationEditor$12$1$1;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor$12$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/inaturalist/android/ObservationEditor$12$1;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor$12$1;Landroid/widget/EditText;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$12$1$1;->this$2:Lorg/inaturalist/android/ObservationEditor$12$1;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationEditor$12$1$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 749
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$12$1$1;->this$2:Lorg/inaturalist/android/ObservationEditor$12$1;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p2, p0, Lorg/inaturalist/android/ObservationEditor$12$1$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/inaturalist/android/ObservationEditor;->access$1400(Lorg/inaturalist/android/ObservationEditor;Ljava/lang/String;)V

    return-void
.end method
