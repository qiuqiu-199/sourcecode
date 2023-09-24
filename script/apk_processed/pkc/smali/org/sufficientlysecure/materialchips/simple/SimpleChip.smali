.class public Lorg/sufficientlysecure/materialchips/simple/SimpleChip;
.super Ljava/lang/Object;
.source "SimpleChip.java"

# interfaces
.implements Lorg/sufficientlysecure/materialchips/model/ChipInterface;


# instance fields
.field private filterString:Ljava/lang/String;

.field private id:J

.field private info:Ljava/lang/String;

.field private label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/simple/SimpleChip;->label:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lorg/sufficientlysecure/materialchips/simple/SimpleChip;->info:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/sufficientlysecure/materialchips/simple/SimpleChip;->id:J

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lorg/sufficientlysecure/materialchips/simple/SimpleChip;->id:J

    return-wide v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/simple/SimpleChip;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/simple/SimpleChip;->label:Ljava/lang/String;

    return-object v0
.end method

.method public isKeptForConstraint(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/simple/SimpleChip;->filterString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
