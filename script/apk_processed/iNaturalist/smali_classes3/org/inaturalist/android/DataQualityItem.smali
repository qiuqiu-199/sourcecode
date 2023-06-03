.class public Lorg/inaturalist/android/DataQualityItem;
.super Ljava/lang/Object;
.source "DataQualityItem.java"


# instance fields
.field public agreeCount:I

.field public currentUserAgrees:Z

.field public currentUserDisagrees:Z

.field public disagreeCount:I

.field public iconResource:I

.field public isVotable:Z

.field public metricName:Ljava/lang/String;

.field public titleResource:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Z)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lorg/inaturalist/android/DataQualityItem;->iconResource:I

    .line 16
    iput p2, p0, Lorg/inaturalist/android/DataQualityItem;->titleResource:I

    .line 17
    iput-object p3, p0, Lorg/inaturalist/android/DataQualityItem;->metricName:Ljava/lang/String;

    .line 18
    iput-boolean p4, p0, Lorg/inaturalist/android/DataQualityItem;->isVotable:Z

    return-void
.end method
