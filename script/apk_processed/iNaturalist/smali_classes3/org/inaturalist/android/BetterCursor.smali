.class public Lorg/inaturalist/android/BetterCursor;
.super Ljava/lang/Object;
.source "BetterCursor.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TAG:Ljava/lang/String; = "BetterCursor"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mPosition:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    .line 21
    iget-object p1, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 22
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/BetterCursor;->mPosition:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mPosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 28
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 31
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mPosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 41
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mPosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 74
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 45
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mPosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 46
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/BetterCursor;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 53
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mPosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 54
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/BetterCursor;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 3

    .line 81
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mPosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 82
    iget-object v0, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 85
    :cond_0
    new-instance v0, Ljava/sql/Timestamp;

    iget-object v1, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lorg/inaturalist/android/BetterCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0
.end method
