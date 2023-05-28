.class Lorg/inaturalist/android/ObservationEditor$20;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


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

    .line 1595
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$20;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 10

    .line 1600
    :try_start_0
    new-instance p1, Ljava/sql/Timestamp;

    sget-object v0, Lorg/inaturalist/android/INaturalistApp;->DATETIME_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$20;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationEditor;->access$2800(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    .line 1601
    new-instance v0, Ljava/sql/Timestamp;

    add-int/lit16 v3, p2, -0x76c

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getHours()I

    move-result v6

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getMinutes()I

    move-result v7

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getSeconds()I

    move-result v8

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    move-result v9

    move-object v2, v0

    move v4, p3

    move v5, p4

    invoke-direct/range {v2 .. v9}, Ljava/sql/Timestamp;-><init>(IIIIIII)V

    .line 1602
    invoke-virtual {v0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    .line 1603
    new-instance v0, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 1605
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$20;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$2800(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object p1

    sget-object v1, Lorg/inaturalist/android/INaturalistApp;->DATETIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1606
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$20;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$2800(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object p1

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1607
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$20;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$2900(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$20;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationEditor;->access$800(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/inaturalist/android/INaturalistApp;->shortFormatDate(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1609
    new-instance p1, Ljava/sql/Timestamp;

    add-int/lit16 v3, p2, -0x76c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v2 .. v9}, Ljava/sql/Timestamp;-><init>(IIIIIII)V

    .line 1610
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long p4, p2, v0

    if-lez p4, :cond_1

    .line 1611
    new-instance p1, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    :cond_1
    move-object v0, p1

    .line 1613
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$20;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$2800(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lorg/inaturalist/android/ObservationEditor$20;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationEditor;->access$800(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/inaturalist/android/INaturalistApp;->formatDate(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1614
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$20;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$2800(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "#000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1615
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$20;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$2900(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lorg/inaturalist/android/ObservationEditor$20;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationEditor;->access$800(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/inaturalist/android/INaturalistApp;->shortFormatDate(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1618
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$20;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1, v0}, Lorg/inaturalist/android/ObservationEditor;->access$3002(Lorg/inaturalist/android/ObservationEditor;Ljava/sql/Timestamp;)Ljava/sql/Timestamp;

    .line 1619
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$20;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$2900(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "#000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1621
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string p2, "Obs - Date Changed"

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    return-void
.end method
