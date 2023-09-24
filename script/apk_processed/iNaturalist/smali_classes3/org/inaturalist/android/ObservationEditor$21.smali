.class Lorg/inaturalist/android/ObservationEditor$21;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationEditor;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 1628
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$21;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 9

    .line 1633
    :try_start_0
    sget-object p1, Lorg/inaturalist/android/INaturalistApp;->DATETIME_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$21;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$2800(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 1634
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1637
    :catch_0
    :try_start_1
    sget-object p1, Lorg/inaturalist/android/INaturalistApp;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$21;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$2800(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 1638
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    .line 1640
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$21;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    if-eqz p1, :cond_0

    .line 1641
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$21;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    goto :goto_0

    .line 1642
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$21;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    if-eqz p1, :cond_1

    .line 1643
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$21;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    goto :goto_0

    .line 1645
    :cond_1
    new-instance v0, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 1649
    :goto_0
    new-instance p1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/sql/Timestamp;->getYear()I

    move-result v2

    invoke-virtual {v0}, Ljava/sql/Timestamp;->getMonth()I

    move-result v3

    invoke-virtual {v0}, Ljava/sql/Timestamp;->getDate()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v8}, Ljava/sql/Timestamp;-><init>(IIIIIII)V

    .line 1650
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    .line 1651
    new-instance p1, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    .line 1653
    :cond_2
    iget-object p2, p0, Lorg/inaturalist/android/ObservationEditor$21;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationEditor;->access$2800(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p3, p0, Lorg/inaturalist/android/ObservationEditor$21;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p3}, Lorg/inaturalist/android/ObservationEditor;->access$800(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p3

    invoke-virtual {p3, p1}, Lorg/inaturalist/android/INaturalistApp;->formatDatetime(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1654
    iget-object p2, p0, Lorg/inaturalist/android/ObservationEditor$21;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationEditor;->access$2800(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object p2

    const-string p3, "#000000"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1655
    iget-object p2, p0, Lorg/inaturalist/android/ObservationEditor$21;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationEditor;->access$3100(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p3, p0, Lorg/inaturalist/android/ObservationEditor$21;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p3}, Lorg/inaturalist/android/ObservationEditor;->access$800(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p3

    invoke-virtual {p3, p1}, Lorg/inaturalist/android/INaturalistApp;->shortFormatTime(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1656
    iget-object p2, p0, Lorg/inaturalist/android/ObservationEditor$21;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationEditor;->access$3100(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object p2

    const-string p3, "#000000"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1657
    iget-object p2, p0, Lorg/inaturalist/android/ObservationEditor$21;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p2, p1}, Lorg/inaturalist/android/ObservationEditor;->access$3202(Lorg/inaturalist/android/ObservationEditor;Ljava/sql/Timestamp;)Ljava/sql/Timestamp;

    .line 1659
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string p2, "Obs - Date Changed"

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    return-void
.end method
