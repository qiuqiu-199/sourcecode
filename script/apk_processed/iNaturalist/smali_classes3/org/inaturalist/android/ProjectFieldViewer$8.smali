.class Lorg/inaturalist/android/ProjectFieldViewer$8;
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

.field final synthetic val$mDateTimePicker:Lcom/ptashek/widgets/datetimepicker/DateTimePicker;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectFieldViewer;Lcom/ptashek/widgets/datetimepicker/DateTimePicker;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$8;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    iput-object p2, p0, Lorg/inaturalist/android/ProjectFieldViewer$8;->val$mDateTimePicker:Lcom/ptashek/widgets/datetimepicker/DateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 460
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$8;->val$mDateTimePicker:Lcom/ptashek/widgets/datetimepicker/DateTimePicker;

    invoke-virtual {p1}, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->reset()V

    return-void
.end method
