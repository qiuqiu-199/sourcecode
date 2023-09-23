.class public interface abstract Landroid/arch/persistence/db/SupportSQLiteProgram;
.super Ljava/lang/Object;
.source "SupportSQLiteProgram.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# virtual methods
.method public abstract bindBlob(I[B)V
.end method

.method public abstract bindDouble(ID)V
.end method

.method public abstract bindLong(IJ)V
.end method

.method public abstract bindNull(I)V
.end method

.method public abstract bindString(ILjava/lang/String;)V
.end method

.method public abstract clearBindings()V
.end method
