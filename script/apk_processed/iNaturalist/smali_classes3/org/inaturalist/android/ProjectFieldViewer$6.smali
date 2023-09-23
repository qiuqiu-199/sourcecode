.class Lorg/inaturalist/android/ProjectFieldViewer$6;
.super Ljava/lang/Object;
.source "ProjectFieldViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectFieldViewer;->showDateTimeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProjectFieldViewer;

.field final synthetic val$mDateTimeDialog:Landroid/app/Dialog;

.field final synthetic val$mDateTimePicker:Lcom/ptashek/widgets/datetimepicker/DateTimePicker;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectFieldViewer;Lcom/ptashek/widgets/datetimepicker/DateTimePicker;Landroid/app/Dialog;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$6;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    iput-object p2, p0, Lorg/inaturalist/android/ProjectFieldViewer$6;->val$mDateTimePicker:Lcom/ptashek/widgets/datetimepicker/DateTimePicker;

    iput-object p3, p0, Lorg/inaturalist/android/ProjectFieldViewer$6;->val$mDateTimeDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 440
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$6;->val$mDateTimePicker:Lcom/ptashek/widgets/datetimepicker/DateTimePicker;

    invoke-virtual {p1}, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->clearFocus()V

    .line 442
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$6;->val$mDateTimePicker:Lcom/ptashek/widgets/datetimepicker/DateTimePicker;

    invoke-virtual {p1}, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->getDate()Ljava/util/Date;

    move-result-object p1

    .line 443
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 444
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer$6;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {v0}, Lorg/inaturalist/android/ProjectFieldViewer;->access$900(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$6;->val$mDateTimeDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
