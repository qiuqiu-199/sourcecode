.class public interface abstract Lorg/inaturalist/android/TaxonSuggestionAdapter$OnTaxonSuggestion;
.super Ljava/lang/Object;
.source "TaxonSuggestionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/TaxonSuggestionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTaxonSuggestion"
.end annotation


# virtual methods
.method public abstract onTaxonCompared(ILorg/json/JSONObject;)V
.end method

.method public abstract onTaxonDetails(ILorg/json/JSONObject;)V
.end method

.method public abstract onTaxonSelected(ILorg/json/JSONObject;)V
.end method
