.class public interface abstract Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SupportSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;,
        Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;,
        Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
    }
.end annotation


# virtual methods
.method public abstract getReadableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;
.end method

.method public abstract getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;
.end method
