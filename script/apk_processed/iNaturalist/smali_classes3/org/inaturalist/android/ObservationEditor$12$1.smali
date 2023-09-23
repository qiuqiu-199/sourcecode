.class Lorg/inaturalist/android/ObservationEditor$12$1;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationEditor$12;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor$12;Landroid/app/AlertDialog;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 708
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p1, 0x1

    if-nez p3, :cond_0

    .line 712
    iget-object p2, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p2, p2, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iput-boolean p1, p2, Lorg/inaturalist/android/ObservationEditor;->mLocationManuallySet:Z

    .line 713
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$1300(Lorg/inaturalist/android/ObservationEditor;)V

    goto/16 :goto_4

    :cond_0
    if-ne p3, p1, :cond_4

    .line 716
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p2, p2, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const-class p3, Lorg/inaturalist/android/LocationChooserActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 718
    iget-object p2, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p2, p2, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p2, p2, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p2, p2, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p2, p2, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p2, p2, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p2, p2, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p2, p2, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p2, p2, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p2, p2, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    .line 719
    :goto_0
    iget-object p3, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p3, p3, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p3, p3, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p3, p3, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    if-nez p3, :cond_2

    iget-object p3, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p3, p3, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p3, p3, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p3, p3, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p3, p3, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p3, p3, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p3, p3, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    :goto_1
    const-string p4, "longitude"

    .line 720
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p3, "latitude"

    .line 721
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "accuracy"

    .line 722
    iget-object p3, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p3, p3, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p3, p3, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p3, p3, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    if-eqz p3, :cond_3

    iget-object p3, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p3, p3, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p3, p3, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p3, p3, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide p3

    goto :goto_2

    :cond_3
    const-wide/16 p3, 0x0

    :goto_2
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string p2, "iconic_taxon_name"

    .line 723
    iget-object p3, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p3, p3, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p3, p3, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p3, p3, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    iget-object p2, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p2, p2, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const/16 p3, 0x67

    invoke-virtual {p2, p1, p3}, Lorg/inaturalist/android/ObservationEditor;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    .line 728
    :cond_4
    new-instance p2, Landroid/widget/EditText;

    iget-object p3, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p3, p3, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 729
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 732
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 733
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 734
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 737
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 738
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    goto :goto_3

    .line 740
    :cond_5
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    goto :goto_3

    :cond_6
    const-string p1, ""

    .line 742
    :goto_3
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p3, 0x0

    .line 743
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/widget/EditText;->setSelection(II)V

    .line 745
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$12$1;->this$1:Lorg/inaturalist/android/ObservationEditor$12;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor$12;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$200(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    const p3, 0x7f100146

    new-instance p4, Lorg/inaturalist/android/ObservationEditor$12$1$1;

    invoke-direct {p4, p0, p2}, Lorg/inaturalist/android/ObservationEditor$12$1$1;-><init>(Lorg/inaturalist/android/ObservationEditor$12$1;Landroid/widget/EditText;)V

    new-instance p5, Lorg/inaturalist/android/ObservationEditor$12$1$2;

    invoke-direct {p5, p0}, Lorg/inaturalist/android/ObservationEditor$12$1$2;-><init>(Lorg/inaturalist/android/ObservationEditor$12$1;)V

    invoke-virtual {p1, p3, p2, p4, p5}, Lorg/inaturalist/android/ActivityHelper;->confirm(ILjava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 758
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lorg/inaturalist/android/ObservationEditor$12$1$3;

    invoke-direct {p3, p0, p2}, Lorg/inaturalist/android/ObservationEditor$12$1$3;-><init>(Lorg/inaturalist/android/ObservationEditor$12$1;Landroid/widget/EditText;)V

    const-wide/16 p4, 0x12c

    invoke-virtual {p1, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    return-void
.end method
