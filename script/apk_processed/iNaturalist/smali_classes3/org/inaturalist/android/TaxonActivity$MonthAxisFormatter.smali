.class public Lorg/inaturalist/android/TaxonActivity$MonthAxisFormatter;
.super Ljava/lang/Object;
.source "TaxonActivity.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/TaxonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MonthAxisFormatter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TaxonActivity;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/TaxonActivity;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity$MonthAxisFormatter;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 2

    float-to-double p1, p1

    .line 557
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 559
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 560
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 561
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 562
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
